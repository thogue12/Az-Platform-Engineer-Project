
### ------- Resource Group ---------- ###
# location    = "eastus2"
environment = "test"
# name        = ""

### ------- Virtual Network ------------ ###
vnet_address   = ["10.0.0.0/24"]
vnet_name      = "VNET"
subnet_name    = "MiddleTier-Interconnect"
subnet_address = ["10.0.0.0/24"]

### -------- SQL Server --------------- ###
sql_server_name      = "tims-sql-server"
# admin_login          = ""
# admin_login_password = ""
elasticpool_name     = "tims-elastic-pool"
connection_string    = "value"
vnet_rule_name       = "tims-vnet-rule"
database_name        = "Tims-database"
# database_count       = 

### -------- App Service Plan ---------- ###
web_app_name     = "tims-web-app_service-plan"
api_app_name     = "tims-api-app-service-plan"
web_os           = "Windows"
api_os           = "Linux"
api_sku_name     = "S1"
web_app_sku_name = "S1"

### ------------- Key Vault ------------ ###

purge_protection_enabled = false
key_valut_name           = "TimsKeyVault"
sku_name                 = "standard"
secrete_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore", "Purge"]
key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "GetRotationPolicy",
"SetRotationPolicy"]
storage_permissions = ["Get", "Backup", "Delete", "DeleteSAS", "GetSAS",
"List", "Purge", "Recover"]


### ---------- Function App -------------- ###

function_app_name = "tims-function-api"


### ----------- Web App ------------------ ###

web_application_name = "timsweb"

### ---------- Storage Account ----------- ###

contianer_access_type = "private"
contianer_name        = "rg-cont"
# storage_account_name  = "rgstorage786404"
