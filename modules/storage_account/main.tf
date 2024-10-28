resource "azurerm_storage_account" "this_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_container" "this_container" {
  name                  = var.contianer_name
  storage_account_name  = var.storage_account_name
  container_access_type = var.contianer_access_type
}

