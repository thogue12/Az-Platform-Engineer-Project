output "sql_server_id" {
  value = azurerm_mssql_server.this_sql_server.id
}

output "administrator_login" {
  value = azurerm_mssql_server.this_sql_server.administrator_login
}

output "administrator_login_password" {
  value = azurerm_mssql_server.this_sql_server.administrator_login_password
}