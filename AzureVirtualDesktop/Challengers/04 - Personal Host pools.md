# Challenge 02 - Personal host pools deployment

## Introduction

In this challenge, you will deploy the Azure Virtual Desktop (AVD) personal host pools.

## Learning Objectives

- Deploy personal host pools
- Configure host pool properties
- Implement session hosts
- Apply proper sizing for host pools

## Success Criteria

1. Deploy a personal host pool with Desktop capability
2. Set up proper RDP properties for each host pool
3. Configure Start On Connect functionality so the VM boots up only when a user attempts to connect
4. Test connectivity and verify resource health

## Environment

Based on the experience from the previous challenge where you deployed Pooled host pool, try to create a different type of host pool - **Personal**. These host pools are intended for single user and are not shared with other users. These users will be using heavier workloads and they are dependent on CPU compute power so sharing the same VM with other users might negatively influence their work. Requirements for the SW is:

- Microsoft Teams
- Microsoft 365 Apps
- Edge
- OneDrive
- Microsoft SQL Management studio
- Visual Studio Code

## Deployment

### Create a personal host pools
- The goal is to create AVD session host pools so that users have environment based on your prepared scenario.

### Configure the necessary RDP properties (multi-monitor, audio redirection, etc.)
- Navigate through all the RDP properties and configure them according to your selected use case.

###  Deploy at least 2 session hosts using a marketplace image
- There are several marketplace images available. Custom image will be used in another challenge. We want to have at least 2 session host in each host pool.

### Task - Deploy Personal Host Pool

* Create a personal host pool for power users
* Configure the assignment type
* Deploy at least 2 session hosts with appropriate sizing
* Configure the necessary RDP properties for power users

**Requirements:**
- VM size: Select appropriate VM size and configuration for a Power user. Keep in mind the performed tasks by the users are going to be CPU intensive
- Region: Suggest and select the best region to deploy the session hosts. Users will be connecting from Czechia. All resources such as data and application will are cloud-based (such as Microsoft 365) or Web-based applications. What are the arguments for the selected region?
- OS: Select a correct Windows 11 image, that is supported by Azure Virtual Desktop from Azure marketplace and use this image to deploy session hosts.
- VM should be using nowadays standard security features: Secure boot, TPM and Integrity monitoring
- Select the best OS disk type to provide enough performance
- Boot diagnostics has to be enabled
- Ensure the VM is Entra joined and enrolled in Microsoft Intune
- Create an Entra ID Security group, that will always contain all AVD session hosts (VMs)

## Verification Checklist

- [ ] Session hosts are deployed and have status "Available"
- [ ] Connection to session hosts are successfull from Windows App
- [ ] Verify how the users are assigned the session hosts
- [ ] Session hosts are successfully enrolled in Intune

## Resources

* [Create a host pool with the Azure portal](https://learn.microsoft.com/en-us/azure/virtual-desktop/create-host-pools-azure-marketplace)
* [Host pool load-balancing methods](https://learn.microsoft.com/en-us/azure/virtual-desktop/host-pool-load-balancing)
* [Configure RDP properties](https://learn.microsoft.com/en-us/azure/virtual-desktop/customize-rdp-properties)
* [Session host VM sizing guidance](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/virtual-machine-recs?context=%2Fazure%2Fvirtual-desktop%2Fcontext%2Fcontext)