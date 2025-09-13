# Aptos Name Service (ANS)

## Description of the Project

The Aptos Name Service (ANS) is a decentralized naming system built on the Aptos blockchain that provides human-readable names for blockchain addresses. Similar to the Ethereum Name Service (ENS), ANS allows users to register memorable domain names (like "alice.apt" or "mycompany.apt") that resolve to their Aptos wallet addresses.

This smart contract implements the core functionality of a name service with two primary functions:
- **Name Registration**: Users can register unique names by paying a registration fee of 1 APT
- **Name Resolution**: Anyone can look up registered names to find the corresponding wallet address

The system prevents duplicate registrations and ensures that each name can only be owned by one address at a time. All registration fees are collected by the contract, creating a sustainable economic model for the service.

## Vision of the Project

Our vision is to make blockchain interactions as simple and user-friendly as traditional web services. Instead of sharing long, complex wallet addresses like `0x309d2f6bce27b11a71f4f84986b0df68c1228c945b85ff4e6138b487e3a88d27`, users can simply use memorable names like `john.apt` or `mystore.apt`.

**Key Vision Points:**
- **Simplify User Experience**: Make sending transactions as easy as typing a name
- **Enhance Adoption**: Lower the barrier for mainstream users to interact with blockchain
- **Create Digital Identity**: Enable users to build recognizable brands and identities on-chain
- **Interoperability**: Provide a foundation for other dApps to integrate human-readable addressing
- **Decentralization**: Maintain a permissionless and censorship-resistant naming system

## Future Scope of the Project

The current implementation is a foundational version with significant potential for expansion:

### Short-term Enhancements (Phase 1)
- **Subdomain Support**: Allow users to create subdomains (e.g., `shop.alice.apt`)
- **Name Transfer**: Enable users to transfer ownership of registered names
- **Expiration System**: Implement time-based name rentals with renewal options
- **Reverse Resolution**: Look up names associated with a given address
- **Profile Metadata**: Store additional information like avatars, social links, and descriptions

### Medium-term Features (Phase 2)
- **Multi-Address Resolution**: Support resolving names to different types of addresses (Bitcoin, Ethereum, etc.)
- **Content Addressing**: Store IPFS hashes for decentralized websites
- **Integration APIs**: Provide easy-to-use APIs for wallet and dApp integrations
- **Advanced Pricing**: Dynamic pricing based on name length and demand
- **Governance Token**: Introduce community governance for protocol decisions
- **Premium Names**: Auction system for high-value names

### Long-term Roadmap (Phase 3)
- **Cross-Chain Integration**: Bridge with other blockchain name services
- **Enterprise Solutions**: Business-grade features for organizations
- **Mobile SDK**: Native mobile app integration tools
- **AI-Powered Suggestions**: Smart name recommendation system
- **Social Features**: Name-based messaging and social interactions
- **DeFi Integration**: Use names as collateral or in DeFi protocols
- **Web3 Identity Layer**: Comprehensive identity solution for the decentralized web

### Technical Improvements
- **Gas Optimization**: Reduce transaction costs through code optimization
- **Scalability**: Implement layer-2 solutions for high-volume usage
- **Security Audits**: Regular security reviews and upgrades
- **Performance Monitoring**: Analytics and monitoring dashboards
- **Developer Tools**: Comprehensive documentation and development frameworks

---

**Current Status**: Beta Version - Core functionality implemented
**Next Milestone**: Subdomain support and name transfer functionality
**License**: MIT License
**Contributions**: Welcome! Please read our contributing guidelines before submitting PRs.

Transaction id
<img width="1897" height="710" alt="image" src="https://github.com/user-attachments/assets/9a2abdfc-9164-472d-8004-2b1c7ce3c10b" />
