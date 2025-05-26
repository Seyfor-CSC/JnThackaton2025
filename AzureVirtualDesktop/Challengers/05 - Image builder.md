# Challenge 03 - Prepare customized image using Image builder

## Introduction

In this challenge, you will customize an existing Windows image from the Marketplace using the built-in Image builder resource within Azure Virtual Desktop.

## Learning Objectives

- Prepare customized image
- Store the image in Azure compute gallery
- Deploy session hosts using the image
- Verify the image by connecting to the session host and check all the customizations are present

## Success Criteria

1. Prepare customized image
2. Store the image in Azure compute gallery
3. Deploy session hosts using the image
4. Verify the image by connecting to the session host and check all the customizations are present

## Environment

The Azure Virtual Desktop image builder provides built-in script that help you customize the image by preparing the most used customizations. On top of that you can also use custom Powershell script to customize anything besides the built-in script. Using custom powershell scripts, you are also able to install custom SW you would like to have included in the image.

In Azure Windows images can be also prepared manually by creating VM, perform necessary tasks, run sysprep and capture the image. Image builder automates these tasks to make the image management easier.

### Deployment

There are some pre-deployed resources to help you with the deployment:

- Resource group for Image **rg-images-test-ne-01**
- Resource group for Staging **rg-images-test-ne-02**
- Managed identity for the image build **id-avd-test-ne01**
- Gallery image definition **avd-custom-image-win11-multi**
- VNet for image build **vnet-avd-test-ne-01**
- Subnet for image build **snet-image-test-ne-01**

### Task 1 - Create a custom image
Using the Custom image templates, prepare a custom image. Navigate through all the built-in script and configure anything according to your needs and what makes sense for your usecase.

### Task 2 - Build the image
Once the image definition is create, start the build and wait for it to finish. After finishing the build, the image version should be visible in Azure Compute gallery.

Important: Image build takes at least 1 hour. Feel free to continue with a different challenge and come back once it is finished.

### Task 3 -  Deploy at least 2 session hosts using a marketplace image
After the image is created, deploy at least 2 session hosts (pooled/personal) selecting the customized image

### Task 4 - Verify the deployment
Once the session hosts are deployed, test the connection and validate, the image is customized according to your definition.

## Verification Checklist

- [ ] Image is successfully built in the Azure Compute gallery
- [ ] Deployment of session hosts was successfull and users are able to connect
- [ ] Session hosts have appropriate image customizations

## Resources
- [Azure Compute gallery](https://learn.microsoft.com/en-us/azure/virtual-desktop/create-custom-image-templates)
- [AVD Image builder](https://learn.microsoft.com/en-us/azure/virtual-desktop/create-custom-image-templates)
