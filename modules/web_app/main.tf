data "azurerm_client_config" "current" {}

resource "azurerm_windows_web_app" "this_web_app" {
  name                = var.web_application_name
  resource_group_name = var.name
  location            = var.location
  service_plan_id     = var.web_app_service_plan_id

  site_config {}

  identity {
    type = "SystemAssigned"
  }
  auth_settings_v2 {
    auth_enabled = true
    default_provider = "azureactivedirectory"

    login {
      token_store_enabled = true
    }

    active_directory_v2 {
      client_id = data.azurerm_client_config.current.client_id
      tenant_auth_endpoint = "https://sts.windows.net/${data.azurerm_client_config.current.tenant_id}/v2.0"
    }
    unauthenticated_action = "RedirectToLoginPage"
  }

  
}
