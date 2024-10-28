
### ------- Resource Group --------###
environment = "dev"
name        = "rg-globaladmin"
location    = "westus"

### ------- Virtual Network ------- ###
vnet_address   = ["10.0.1.0/24"]
vnet_name      = "vnet"
subnet_address = ["10.0.1.0/24"]
subnet_name    = "Middletier-Interconnect"

### -------- SQL Server ----------- ###
admin_login          = "thoeri"
admin_login_password = "Tifjlsf372878@)#"
elasticpool_name     = "globaladmin-pool"
sql_server_name      = "globaladmin-web-sql-server"
vnet_rule_name       = "globaladmin-vnet-rule"

### -------- App Service Plan ----- ###
web_app_name     = "globaladmin-web"
api_app_name     = "globaladmin-api"
web_os           = "Windows"
api_os           = "Linux"
api_sku_name     = "B2"
web_app_sku_name = "B3"