terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "1.38.0"
    }
  }
}

provider "azurerm" {
  features {}
 subscription_id = "22135fc2-ce1f-463b-9d7e-0de70cc656ec"
}

