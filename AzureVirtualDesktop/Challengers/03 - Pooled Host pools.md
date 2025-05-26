# Challenge 01 - Pooled host pools deployment

## Introduction

In this challenge, you will deploy the Azure Virtual Desktop (AVD) pooled host pools.

## Learning Objectives

- Deploy pooled host pools
- Configure host pool properties
- Implement session hosts
- Apply proper sizing for host pools

## Success Criteria

1. Deploy a pooled host pool with Desktop capability and RemoteApps
2. Configure appropriate load balancing settings
3. Set up proper RDP properties for each host pool
4. Test connectivity and verify resource health

## Task - Deploy Pooled Host Pools

### Environment

One of the more typical use case of Azure Virtual Desktop is Pooled session host. In comparison with on-premises deployments such as Remote Desktop Services based on the Windows Server OS, the AVD pooled deployment utilizes Windows 11 Enterprise multi-session edition. This kind of OS works exactly as RDS on Windows Server thus allowing connection for multiple users to a single session host (VM) with a difference of client OS instead of Windows server. This provides better use experience and native support for Microsoft 365 services. Important notice: You can only utilize Windows 11 multi-session within the Azure platform.

Before starting with a deployment of pooled session hosts, first prepare an environment that is to be provided to the end users. In this task please focus on standard users that are going to use AVD as a hosted VDI platform for their everyday work. They will use the following applications:

- Microsoft Teams
- Microsoft 365 Apps
- Edge
- OneDrive

Note.: Some of the users will use only Microsoft Edge browser to access company's SharePoint online and Exchange Online.

In order to prepare the environment, there are some key aspects to be taken into account:

### Planning
Microsoft provides detailed overview to help you plan your desired AVD infrastructure. We have also pointed some main topics down below, but they are all part of the planning process:

* [Planning](https://learn.microsoft.com/en-us/azure/virtual-desktop/organization-internal-external-commercial-purposes-recommendations)

### VM
There are hundres of Virtual Machine sizes. Selecting correct size is crucial for AVD deployment.

* [VM Sizing](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/virtual-machine-recs?context=%2Fazure%2Fvirtual-desktop%2Fcontext%2Fcontext)

### Region
Not just from the data location point of view but also taking bandwith into account. These 2 articles will help you better understand the AVD infrastructure from the network point of view:

* [Network connectivity](https://learn.microsoft.com/en-us/azure/virtual-desktop/network-connectivity)
* [Bandwidth](https://learn.microsoft.com/en-us/azure/virtual-desktop/rdp-bandwidth)

Hint.: Not every service is available in every region. Try to use existing web apps to confirm AVD is available within your region.

### Cost
In public cloud, deciding for every resource deployment should always be thought thoroughly. Every resource has a cost and the goal is to built cost-effective environment. More information can be found in the docs:

* [Understanding and estimate costs](https://learn.microsoft.com/en-us/azure/virtual-desktop/understand-estimate-costs)

### Licensing and cost (Optional)
In this challenge, the licensing is already covered by active Microsoft 365 Business Premium licenses. There are several other options that include AVD license. Optionaly, you can read about those here:

* [Licensing](https://learn.microsoft.com/en-us/azure/virtual-desktop/licensing)

### Deployment

This environment has some resources pre-deployed. You can use the existing resources or optionally create your own:

- Resource group **rg-network-test-ne-01** containing the Virtual Network with 3 subnets
- Security group **hack_azure_role_owner_infra_avd** for granting access to session hosts

### Create a pooled host pools
The goal is to create AVD session host pools so that users have environment based on your prepared scenario.

**Requirements:**
- VM size: Select appropriate VM size and configuration for a Standard user that uses standard Microsoft 365 apps, Microsoft Teams, Edge, OneDrive
- Region: Suggest and select the best region to deploy the session hosts. Users will be connecting from Czechia. All resources such as data and application will are cloud-based (such as Microsoft 365) or Web-based applications. What are the arguments for the selected region?
- OS: Select a correct Windows 11 image, that is supported by Azure Virtual Desktop from Azure marketplace and use this image to deploy session hosts.
- VM should be using nowadays standard security features: Secure boot, TPM and Integrity monitoring
- Select the best OS disk type to provide enough performance
- Boot diagnostics has to be enabled
- Ensure the VM is Entra joined and enrolled in Microsoft Intune
- Single sign-on using Entra ID authentication has to be enabled

## Verification Checklist

- [ ] Session hosts are deployed and have status "Available"
- [ ] Connection to session hosts are successfull from Windows App
- [ ] Test Microsoft Teams and Microsoft 365 apps. Verify users can sign-in and make a teams call using redirected camera and microphone
- [ ] Users are distributed on session hosts according to the load balancing rules
- [ ] Session hosts are successfully enrolled in Intune
- [ ] (Optional) Create a dynamic group in Entra ID containing all session hosts and apply Intune Configuration policy "AVD - Session time limits"

## Resources

* [Create a host pool with the Azure portal](https://learn.microsoft.com/en-us/azure/virtual-desktop/create-host-pools-azure-marketplace)
* [Host pool load-balancing methods](https://learn.microsoft.com/en-us/azure/virtual-desktop/host-pool-load-balancing)
* [Configure RDP properties](https://learn.microsoft.com/en-us/azure/virtual-desktop/customize-rdp-properties)
* [Session host VM sizing guidance](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/virtual-machine-recs?context=%2Fazure%2Fvirtual-desktop%2Fcontext%2Fcontext)
