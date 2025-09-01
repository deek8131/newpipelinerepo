terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
  backend "azurerm" {
    resource_group_name   = "saurabh-rg"
    storage_account_name  = "sgtsaurabh"
    container_name        = "newcont"
    key                   = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5fbead97-423e-4814-809c-114db991d911"
}

resource "azurerm_resource_group" "motorg" {
  name     = "MotoRG12"
  location = "East US"
}

resource "azurerm_storage_account" "motoacc" {
  name                     = "deeksha12345"
  resource_group_name      = "MotoRG12"
  location                 = "West US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
depends_on = [azurerm_resource_group.motorg]
}
resource "azurerm_storage_container" "motocontainer" {
  name                  = "moto-container"
  storage_account_id    = azurerm_storage_account.motoacc.id
  container_access_type = "private"
depends_on = [azurerm_storage_account.motoacc]
}

