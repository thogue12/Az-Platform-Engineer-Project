
### ------- Resource Group --------###
location    = "eastus2"
environment = "test"
name        = "RG-GlobalAdmin"

### ------- Virtual Network ------- ###
vnet_address   = ["10.0.0.0/24"]
vnet_name      = "VNET"
subnet_name    = "MiddleTier-Interconnect"
subnet_address = ["10.0.0.0/24"]

### -------- SQL Server ----------- ###
sql_server_name      = "global-admin-sql-db"
admin_login          = ""
admin_login_password = ""
elasticpool_name     = "global-admin-pool"
vnet_rule_name       = "GlobalAdmin-VNET-Rule"

### -------- App Service Plan ----- ###
web_app_name     = "Global-Admin-Web"
api_app_name     = "Global-Admin-Api"
web_os           = "Windows"
api_os           = "Linux"
api_sku_name     = "S1"
web_app_sku_name = "S1"

### --------- Key Vault ------- ###

purge_protection_enabled = false
key_valut_name           = "GlobalAdminKeyVault"
sku_name                 = "standard"
secrete_permissions      = ["Get", "List", "Set", "Delete", "Recover", "Backup", "Restore" ,"Purge"]
key_permissions = ["Create", "Delete", "Get", "Purge", "Recover", "Update", "GetRotationPolicy",
"SetRotationPolicy"]
storage_permissions = ["Get", "Backup", "Delete", "DeleteSAS", "GetSAS",
"List", "Purge", "Recover"]

### ---------- Function App -------- ###
function_app_name = "Glocal-Admin-FunctionAPI"

### ---------- Storage Account ------- ###

contianer_access_type = "private"
contianer_name = "rg-cont"
storage_account_name = "rgstorage786404"
