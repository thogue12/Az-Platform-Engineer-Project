

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
  database_name        = "${var.database_name}-${var.environment}"
  database_count       = var.database_count
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

module "key_vault" {
  source                   = "../../modules/key_vault"
  purge_protection_enabled = var.purge_protection_enabled
  key_valut_name           = "${var.key_valut_name}-${var.environment}"
  secrete_permissions      = var.secrete_permissions
  key_permissions          = var.key_permissions
  storage_permissions      = var.storage_permissions
  sku_name                 = var.sku_name
  db_password              = module.sql_server.admin_login_password
  db_username              = module.sql_server.administrator_login
  location                 = module.resource_group.location
  name                     = module.resource_group.resource_group_name
  connection_string = "${module.sql_server.sql_server_id};${module.sql_server.administrator_login};${module.sql_server.admin_login_password}"
}

module "storage_account" {
  source                = "../../modules/storage_account"
  contianer_access_type = var.contianer_access_type
  contianer_name        = "${var.contianer_name}-${var.environment}"
  storage_account_name  = "${var.storage_account_name}${var.environment}"
  name                  = module.resource_group.resource_group_name
  location              = module.resource_group.location
}

module "function_app" {
  source                     = "../../modules/function_app"
  name                       = module.resource_group.resource_group_name
  location                   = module.resource_group.location
  function_app_name          = var.function_app_name
  storage_account_access_key = module.storage_account.storage_account_primary_key
  storage_account_name       = module.storage_account.storage_account_name
  app_service_plan_id        = module.app_service_plan.app_service_plan_id
  subnet_id                  = module.virtual_network.subnet_id
}

module "web_app" {
  source                  = "../../modules/web_app"
  name                    = module.resource_group.resource_group_name
  location                = module.resource_group.location
  web_app_service_plan_id = module.app_service_plan.web_app_service_plan_id
  web_application_name    = "${var.web_application_name}-${var.environment}"
}