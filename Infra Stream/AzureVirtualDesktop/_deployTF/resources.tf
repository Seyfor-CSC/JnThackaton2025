# Azure provider configuration
provider "azurerm" {
  features {}
  subscription_id = "8c9523e9-1b9e-4de9-b847-145be9be0b12"
}

# Resource Group
resource "azurerm_resource_group" "avd_rg_01" {
  name     = "rg-avd-test-ne-01"
  location = "North Europe"
}
resource "azurerm_resource_group" "avd_rg_02" {
  name     = "rg-avd-test-ne-02"
  location = "North Europe"
}
resource "azurerm_resource_group" "avd_rg_03" {
  name     = "rg-avd-test-ne-03"
  location = "North Europe"
}

# AVD Workspace for Pooled Session Hosts with Desktop app
resource "azurerm_virtual_desktop_workspace" "pooled_desktop" {
  name                = "vdws-avd-test-ne-01"
  location            = azurerm_resource_group.avd_rg_01.location
  resource_group_name = azurerm_resource_group.avd_rg_01.name
  friendly_name       = "Pooled Desktop Workspace"
  description         = "Workspace for pooled session hosts with desktop applications"
}

# AVD Workspace for Pooled Session Hosts with RemoteApp
resource "azurerm_virtual_desktop_workspace" "pooled_remoteapp" {
  name                = "vdws-avd-test-ne-02"
  location            = azurerm_resource_group.avd_rg_02.location
  resource_group_name = azurerm_resource_group.avd_rg_02.name
  friendly_name       = "Pooled RemoteApp Workspace"
  description         = "Workspace for pooled session hosts with remote applications"
}

# AVD Workspace for Personal Session Hosts
resource "azurerm_virtual_desktop_workspace" "personal" {
  name                = "vdws-avd-test-ne-03"
  location            = azurerm_resource_group.avd_rg_03.location
  resource_group_name = azurerm_resource_group.avd_rg_03.name
  friendly_name       = "Personal Desktop Workspace"
  description         = "Workspace for personal session hosts"
}

# Host pool for Pooled Desktop
resource "azurerm_virtual_desktop_host_pool" "pooled_desktop" {
  name                     = "vdpool-avd-test-ne-01"
  location                 = azurerm_resource_group.avd_rg_01.location
  resource_group_name      = azurerm_resource_group.avd_rg_01.name
  type                     = "Pooled"
  load_balancer_type       = "BreadthFirst"
  friendly_name            = "Pooled Desktop Host Pool"
  description              = "Host pool for pooled desktop sessions"
  validate_environment     = false
  maximum_sessions_allowed = 4
  preferred_app_group_type = "Desktop"
}

# Host pool for Pooled RemoteApp
resource "azurerm_virtual_desktop_host_pool" "pooled_remoteapp" {
  name                     = "vdpool-avd-test-ne-02"
  location                 = azurerm_resource_group.avd_rg_02.location
  resource_group_name      = azurerm_resource_group.avd_rg_02.name
  type                     = "Pooled"
  load_balancer_type       = "BreadthFirst"
  friendly_name            = "Pooled RemoteApp Host Pool"
  description              = "Host pool for pooled remote application sessions"
  validate_environment     = false
  maximum_sessions_allowed = 4
  preferred_app_group_type = "RailApplications"
}

# Host pool for Personal Desktop
resource "azurerm_virtual_desktop_host_pool" "personal" {
  name                     = "vdpool-avd-test-ne-03"
  location                 = azurerm_resource_group.avd_rg_03.location
  resource_group_name      = azurerm_resource_group.avd_rg_03.name
  type                     = "Personal"
  load_balancer_type       = "Persistent"
  friendly_name            = "Personal Desktop Host Pool"
  description              = "Host pool for personal desktop sessions"
  validate_environment     = false
  preferred_app_group_type = "Desktop"
}

# Application group for Pooled Desktop
resource "azurerm_virtual_desktop_application_group" "pooled_desktop" {
  name                = "vdag-avd-test-ne-01"
  location            = azurerm_resource_group.avd_rg_01.location
  resource_group_name = azurerm_resource_group.avd_rg_01.name
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.pooled_desktop.id
  friendly_name       = "Pooled Desktop Apps"
  description         = "Application group for pooled desktop sessions"
}

# Application group for Pooled RemoteApp
resource "azurerm_virtual_desktop_application_group" "pooled_remoteapp" {
  name                = "vdag-avd-test-ne-02"
  location            = azurerm_resource_group.avd_rg_02.location
  resource_group_name = azurerm_resource_group.avd_rg_02.name
  type                = "RemoteApp"
  host_pool_id        = azurerm_virtual_desktop_host_pool.pooled_remoteapp.id
  friendly_name       = "Pooled Remote Apps"
  description         = "Application group for pooled remote application sessions"
}

# Application group for Personal Desktop
resource "azurerm_virtual_desktop_application_group" "personal" {
  name                = "vdag-avd-test-ne-03"
  location            = azurerm_resource_group.avd_rg_03.location
  resource_group_name = azurerm_resource_group.avd_rg_03.name
  type                = "Desktop"
  host_pool_id        = azurerm_virtual_desktop_host_pool.personal.id
  friendly_name       = "Personal Desktop Apps"
  description         = "Application group for personal desktop sessions"
}

# Workspace application group association for Pooled Desktop
resource "azurerm_virtual_desktop_workspace_application_group_association" "pooled_desktop" {
  workspace_id         = azurerm_virtual_desktop_workspace.pooled_desktop.id
  application_group_id = azurerm_virtual_desktop_application_group.pooled_desktop.id
}

# Workspace application group association for Pooled RemoteApp
resource "azurerm_virtual_desktop_workspace_application_group_association" "pooled_remoteapp" {
  workspace_id         = azurerm_virtual_desktop_workspace.pooled_remoteapp.id
  application_group_id = azurerm_virtual_desktop_application_group.pooled_remoteapp.id
}

# Workspace application group association for Personal Desktop
resource "azurerm_virtual_desktop_workspace_application_group_association" "personal" {
  workspace_id         = azurerm_virtual_desktop_workspace.personal.id
  application_group_id = azurerm_virtual_desktop_application_group.personal.id
}
