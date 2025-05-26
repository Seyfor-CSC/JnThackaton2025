# Challenge 01 - Azure Bastion

## Introduction

In this challenge, you will deploy a Bastion resource. Bastion allows you connect to VMs using just Microsoft Edge (or any other browser) without the need of a VPN or dedicated jump hosts.

## Learning Objectives

- Create an Azure deployment from scratch
- Understand basic difference in Bastion SKUs
- Deploy Azure Bastion and test connection to VMs

## Success Criteria

1. Deploy Azure Bastion
2. Use Azure Bastion for connection to VMs

## Environment

For Azure Bastion, there are no pre-deployed resources.

## Deployment

### Task 1 - Create your resource group
Create a new resource group for your bastion deployment. Use this resource group for all feature deployments (Virtual Network, VMs, etc...)

### Task 2 - Create Virtual Network
Read through the docs and create a Virtual Network resource for the bastion. The virtual network should have enough address space for bastion subnet and subnet for virtual machines.

### Task 3 - Deploy Azure Bastion
Deploy Azure Bastion in a Standard SKU.

### Task 4 - Deploy testing VMs
Deploy 2 testing Virtual Machines. One with Windows OS and the other with Linux.

## Verification Checklist

- [ ] Bastion is deployed successfully
- [ ] Connection using RDP to the VM is successfull
- [ ] Connection using SSH to the VM is successfull

## Resources

- [What is Azure Bastion?](https://learn.microsoft.com/en-us/azure/bastion/bastion-overview)
- [Deploy Bastion](https://learn.microsoft.com/en-us/azure/bastion/quickstart-host-portal)