module "rgs" {
    source = "../../modules/rgs"
    rgs = var.rgs
}

module "azurerm_virtual_network" {
    depends_on = [ module.rgs ]
    source = "../../modules/vm"
    azurerm_virtual_network = var.azurerm_virtual_network
  
}

module "key_vault" {
    depends_on = [ module.rgs ]
    source = "../../modules/key_vault"
    key_vault_name = var.key_vault_name
    


    soft_delete_retention_days = var.soft_delete_retention_days
    purge_protection_enabled = var.purge_protection_enabled
    access_policy = var.access_policy
}

module "azurerm_key_vault_secret" {
    depends_on = [ module.key_vault ]
    source = "../../modules/key_vault_secrets"
    secret_name = var.secret_name
    value = var.secret_value
    key_vault_id = module.key_vault.key_vault_id
  
}


