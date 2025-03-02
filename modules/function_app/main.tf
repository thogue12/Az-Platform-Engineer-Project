data "azurerm_client_config" "current" {}

resource "azurerm_linux_function_app" "this_function_app" {
  name                = var.function_app_name
  resource_group_name = var.name
  location            = var.location

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.app_service_plan_id
  virtual_network_subnet_id = var.subnet_id    #This enables vnet integration for this app

  site_config {}

  identity {
    type = "SystemAssigned"
  }
}


resource "azurerm_role_assignment" "this_ra" {
  scope                = "/subscriptions/${data.azurerm_client_config.current.subscription_id}"
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_linux_function_app.this_function_app.identity[0].principal_id
}
