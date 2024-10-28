module "resource_group" {
  source      = "../../modules/resource_group"
  name        = "${var.name}-${var.environment}"
  location    = var.location
  environment = var.environment

}

module "virtual_network" {
  source         = "../../modules/virtual_network"
  vnet_name      = "${var.vnet_name}-${var.environment}"
  vnet_address   = var.vnet_address
  location       = module.resource_group.location
  name           = module.resource_group.resource_group_name
  environment    = var.environment
  subnet_address = var.subnet_address
  subnet_name    = "${var.subnet_name}-${var.environment}"
}

module "sql_server" {
  source               = "../../modules/sql_server"
  sql_server_name      = "${var.sql_server_name}-${var.environment}"
  admin_login          = var.admin_login
  admin_login_password = var.admin_login_password
  location             = module.resource_group.location
  name                 = module.resource_group.resource_group_name
  subnet_id            = module.virtual_network.subnet_id
  elasticpool_name     = "${var.elasticpool_name}-${var.environment}"
  vnet_rule_name       = "${var.vnet_name}-${var.environment}"
}

module "app_service_plan" {
  source             = "../../modules/app_service_plan"
  location           = module.resource_group.location
  name               = module.resource_group.resource_group_name
  web_app_name       = "${var.web_app_name}-${var.environment}"
  api_app_name       = "${var.api_app_name}-${var.environment}"
  web_os             = var.web_os
  api_os             = var.api_os
  sql_server_id      = module.sql_server.sql_server_id
  virtual_network_id = module.virtual_network.virtual_network_id
  api_sku_name       = var.api_sku_name
  web_app_sku_name   = var.web_app_sku_name
}