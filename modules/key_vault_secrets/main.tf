resource "azurerm_key_vault_secret" "example" {
  name         = var.secret_name
  value        = var.value
  key_vault_id = var.key_vault_id
}