
resource "azurerm_mssql_server" "this_sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_login_password
  minimum_tls_version          = "1.2"

}

resource "azurerm_mssql_virtual_network_rule" "this_vnet_rule" {
  name      = var.vnet_rule_name
  server_id = azurerm_mssql_server.this_sql_server.id
  subnet_id = var.subnet_id

  depends_on = [ azurerm_mssql_server.this_sql_server ]
}

resource "azurerm_mssql_elasticpool" "this_elastic_pool" {
  name                = var.elasticpool_name
  resource_group_name = var.name
  location            = var.location
  server_name         = var.sql_server_name
  license_type        = "LicenseIncluded"
  max_size_gb         = 4.8828125

  sku {
    name     = "BasicPool"
    tier     = "Basic"
    capacity = 50
  }

  per_database_settings {
    min_capacity = 0
    max_capacity = 5
  }

  depends_on = [ azurerm_mssql_server.this_sql_server ]
}