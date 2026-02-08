terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "~> 3.0"
        }
    }
}

provider "azurerm" {
    features {}
    subscription_id = "cdf14a39-ab52-422f-9f27-86198b12563b"
}