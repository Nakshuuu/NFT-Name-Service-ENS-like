module name_service::NameService {
    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;
    use std::string::String;
    use aptos_framework::table::{Self, Table};

    /// Error codes
    const E_NAME_ALREADY_REGISTERED: u64 = 1;
    const E_NAME_NOT_REGISTERED: u64 = 2;
    const E_INSUFFICIENT_PAYMENT: u64 = 3;

    /// Registration fee in APT (in octas - 1 APT = 100000000 octas)
    const REGISTRATION_FEE: u64 = 100000000; // 1 APT

    /// Struct representing a name registration
    struct NameRecord has store {
        owner: address,
        resolved_address: address,
    }

    /// Global registry to store name mappings
    struct NameRegistry has key {
        names: Table<String, NameRecord>,
    }

    /// Initialize the name service (called once by module deployer)
    fun init_module(deployer: &signer) {
        let registry = NameRegistry {
            names: table::new<String, NameRecord>(),
        };
        move_to(deployer, registry);
    }

    /// Function to register a new name
    public fun register_name(
        user: &signer, 
        name: String, 
        resolved_address: address
    ) acquires NameRegistry {
        let user_address = signer::address_of(user);
        let registry = borrow_global_mut<NameRegistry>(@name_service);
        
        // Check if name is already registered
        assert!(!table::contains(&registry.names, name), E_NAME_ALREADY_REGISTERED);
        
        // Collect registration fee
        let payment = coin::withdraw<AptosCoin>(user, REGISTRATION_FEE);
        coin::deposit<AptosCoin>(@name_service, payment);
        
        // Create and store the name record
        let record = NameRecord {
            owner: user_address,
            resolved_address,
        };
        table::add(&mut registry.names, name, record);
    }

    /// Function to resolve a name to an address
    public fun resolve_name(name: String): address acquires NameRegistry {
        let registry = borrow_global<NameRegistry>(@name_service);
        
        // Check if name exists
        assert!(table::contains(&registry.names, name), E_NAME_NOT_REGISTERED);
        
        // Return the resolved address
        let record = table::borrow(&registry.names, name);
        record.resolved_address
    }
}