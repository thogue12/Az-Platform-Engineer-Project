
resource "azurerm_linux_function_app" "this_function_app" {
  name                = var.function_app_name
  resource_group_name = var.name
  location            = var.location

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.app_service_plan_id
  virtual_network_subnet_id = var.subnet_id

  site_config {}
}