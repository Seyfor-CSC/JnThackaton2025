# Challenge 5

[< Previous Challenge](./04_secured_hub.md) - **[Home](../README.md)**

## Intro

In this challenge, you will practice securely publishing a web page to the internet using Azure Front Door.

## Description

* Create a simple web application on WebApp Service. You can use this demo app - https://github.com/Azure-Samples/app-service-web-dotnet-get-started
* Disable internet access to the WebApp and allow access only within the internal network.
* Deploy Azure Front Door and make the WebApp page accessible from the internet by publishing it through Front Door, ensuring that communication between Front Door and the WebApp does not traverse the public internet.
* (Bonus) Publish the web page running on the VM from Challenge 4 through Front Door as well, again ensuring that communication between Front Door and the VM does not go over the public internet.

## Success Criteria

* The page hosted on the WebApp is accessible from the internet, with communication from Front Door to the WebApp not traversing the public internet. Prove this requirement is met using Front Door and Azure Firewall logs.
* (Bonus) The page hosted on the VM is accessible from the internet, with communication from Front Door to the VM not traversing the public internet. Prove this requirement is met using Front Door and Azure Firewall logs.

## Learning Resources

* [What is Azure Front Door?](https://learn.microsoft.com/en-us/azure/frontdoor/front-door-overview)
* [Use private endpoints for Azure App Service apps](https://learn.microsoft.com/en-us/azure/app-service/overview-private-endpoint)
* [Quickstart: Create an Azure Front Door using Azure portal](https://learn.microsoft.com/en-us/azure/frontdoor/create-front-door-portal?tabs=quick)
* [Connect Azure Front Door Premium to an App Service (Web App) origin with Private Link](https://learn.microsoft.com/en-us/azure/frontdoor/standard-premium/how-to-enable-private-link-web-app)
