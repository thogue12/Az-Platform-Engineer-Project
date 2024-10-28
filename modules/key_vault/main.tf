
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "this_key_vault" {
  name                        = var.key_valut_name
  location                    = var.location
  resource_group_name         = var.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = var.purge_protection_enabled

  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = var.key_permissions
    

    secret_permissions = var.secrete_permissions

    storage_permissions = var.storage_permissions
  }
}

resource "azurerm_key_vault_secret" "db_password" {
  name         = var.db_password
  value        = "szechuan"
  key_vault_id = azurerm_key_vault.this_key_vault.id
}

resource "azurerm_key_vault_secret" "db_username" {
  name         = var.db_username
  value        = "szechuan"
  key_vault_id = azurerm_key_vault.this_key_vault.id
}