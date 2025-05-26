# Azure Bastion Hackathon

## Overview
This repository contains resources and documentation for the Azure Bastion Hackathon. Azure Bastion provides secure and seamless RDP and SSH access to virtual machines directly from the Azure portal, without exposing the VMs to the public internet.

## What is Azure Bastion?
Azure Bastion is a fully managed PaaS service that provides secure and seamless RDP and SSH access to your virtual machines. Azure Bastion is provisioned directly in your virtual network and supports all VMs in your virtual network using SSL, without any exposure through public IP addresses.

## Hackathon Challenges

### Challenge 1: Basic Bastion Setup
- Create a virtual network with required subnets
- Deploy Azure Bastion in the network
- Connect to a VM using Bastion

### Challenge 2: Advanced Configuration
- Implement host scaling
- Configure custom ports
- Setup file transfer capabilities

### Challenge 3: Security Enhancement
- Implement JIT (Just-in-Time) access
- Configure access restrictions
- Integrate with Azure Active Directory

## Prerequisites
- An active Azure subscription
- Azure CLI or PowerShell installed
- Basic understanding of networking concepts
- Access to the Azure portal

## Getting Started
1. Clone this repository
2. Review the documentation in the `/docs` folder
3. Complete the setup instructions
4. Start with Challenge 1

## Resources
- [Azure Bastion Documentation](https://docs.microsoft.com/en-us/azure/bastion/)
- [Azure Bastion Pricing](https://azure.microsoft.com/en-us/pricing/details/azure-bastion/)
- [Networking Best Practices](https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/hybrid-networking/)