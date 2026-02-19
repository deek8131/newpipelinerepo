variable "key_vault_name" {
  description = "Name of the key vault"
  type        = string
}

variable "location" {
  description = "Location of the key vault"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "tenant_id" {
  description = "Tenant ID for the key vault"
  type        = string
}

variable "soft_delete_retention_days" {
  description = "Soft delete retention days for the key vault"
  type        = number
}

variable "purge_protection_enabled" {
  description = "Enable purge protection for the key vault"
  type        = bool
}

variable "access_policy" {
  description = "Access policy for the key vault"
  type        = any
}

variable "azurerm_key_vault_secret" {
  description = "Key vault secret configuration"
  type        = any


}

variable "key_vault_id" {
  description = "ID of the key vault"
  type        = string
  
}