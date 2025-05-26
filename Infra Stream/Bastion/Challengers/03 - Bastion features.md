# Challenge 01 - Azure Bastion

## Introduction

In this challenge, you will deploy a Bastion resource. Bastion allows you connect to VMs using just Microsoft Edge (or any other browser) without the need of a VPN or dedicated jump hosts.

## Learning Objectives

- Upgrade Bastion to a higher SKU
- Leverage premium features such as session recording

## Success Criteria

1. Enable session recording for your Azure Bastion
2. Configure a storage account to store session recordings
3. Connect to a VM using Bastion with recording enabled
4. Review the recorded session

## Environment

For Azure Bastion, there are no pre-deployed resources.

## Deployment

### Task 1 - Configure a Storage Account for Session Recordings
1. Create a new storage account
2. Set up necessary permissions for Bastion to write to the storage account

### Task 2: Enable Session Recording for Bastion
1. Navigate to your Bastion resource in the Azure Portal
2. Configure session recording settings
3. Link the storage account you prepared in Task 1

### Task 3: Test the Session Recording
1. Connect to a VM using your Bastion host
2. Perform various operations on the VM
3. End the session
4. Locate and review the recorded session in the storage account

## Verification Checklist

- [ ] Session recording is properly configured for your Bastion host
- [ ] You can successfully record a session
- [ ] You can access and review the recorded session

## Resources
- [Azure Bastion Session Recording Documentation](https://learn.microsoft.com/en-us/azure/bastion/session-recording)