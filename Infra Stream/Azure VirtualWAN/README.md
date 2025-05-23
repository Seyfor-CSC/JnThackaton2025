# Advanced networking - VirtualWAN

## Introduction

This hack will introduce you to the concept of Azure Virtual WAN. You will start with a simple configuration of two hubs and then expand it by adding on-premises connectivity, modifying routing for segmentation, and finally securing the environment with Azure Firewall. In the final challenge, you will try publishing a web application using Azure Front Door.

## Learning Objectives

* Basic connectivity in Virtual WAN
* Branch (on-premises) connectivity including the use of BGP
* Custom routing in Virtual WAN
* Secured Virtual Hub with Azure Firewall
* Secure application publishing using Azure Front Door

## Challenges

* Challenge 1: **[Simple Virtual WAN](./Student/01_simple_vwan.md)**
  * Deploy a basic Virtual WAN to interconnect virtual networks

* Challenge 2: **[Branch connectivity](./Student/02_branch_connectivity.md)**
  * Bring branch connections to your Virtual WAN with Site-to-Site VPN

* Challenge 3: **[Isolated VNets](./Student/03_isolated_vnets.md)**
  * Use custom routing to isolate a virtual network

* Challenge 4: **[Secured Virtual HUB](./Student/04_secured_hub.md)**
  * Deploy Azure Firewall to secure your virtual hub

* Challenge 5: **[Secured publishing](./Student/05_secured_publishing.md)**
  * Set up Azure Front Door to securely publish web applications
