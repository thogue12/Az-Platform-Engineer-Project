output "storage_account_name" {
  value = azurerm_storage_account.this_storage_account.name
}

output "storage_account_primary_key" {
  value = azurerm_storage_account.this_storage_account.primary_access_key
}