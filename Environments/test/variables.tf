variable "name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "environment" {
  type        = string
  description = "environment the resources will be built, dev,test,prod"
}

#######-------------------VNET Module------------------########

variable "vnet_name" {
  type = string
}

variable "vnet_address" {
  type = list(string)
}

variable "subnet_address" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

#######-----------------------SQL Server------------------------##########

variable "sql_server_name" {
  type = string
}

variable "admin_login" {
  type      = string
  sensitive = true
}
variable "admin_login_password" {
  type      = string
  sensitive = true
}

variable "elasticpool_name" {
  type = string
}
variable "database_name" {
  type = string
}

variable "edtu" {
  type = number
  default = 100
}

#######-----------------------------App Service Plan-------------------############
variable "web_app_name" {
  type = string
}
variable "api_app_name" {
  type = string
}

variable "web_os" {
  type = string
}

variable "api_os" {
  type = string
}
variable "web_app_sku_name" {
  type        = string
  description = "can be B2, B3, D1, F1,I2-3,P1v2,P2v2, S1-3"
}

variable "api_sku_name" {
  type        = string
  description = "can be B2, B3, D1, F1,I2-3,P1v2,P2v2, S1-3"
}
variable "vnet_rule_name" {
  type = string
}

###### ----------------------------Key Vault ---------------------- ###########

variable "purge_protection_enabled" {
  type = bool
}

variable "key_valut_name" {
  type = string
}

variable "sku_name" {
  type        = string
  description = "SKU of the key vault can be values such as; 'standard' and 'premium' "
}

variable "secrete_permissions" {
  type        = list(string)
  description = "can be any or all of the following values: Get, Backup, Delete, List, Purge, Recover, Restore, Set, you can also use the * wild card for all permission."
}
variable "key_permissions" {
  type        = list(string)
  description = "can be any or all of the following values: Create, Delete,Get,Purge, Recover,Update,GetRotationPolicy,SetRotationPolicy, you can also use the * wild card for all permission "
}
variable "storage_permissions" {
  type        = list(string)
  description = "can be any or all of the following values: Get, Backup, Delete, DeleteSAS, GetSAS, List, Purge, Recover, RegenerateKey, Restore, Set, SetSAS, Update,  you can also use the * wild card for all permission."
}

#### --------------------------------Function App-----------------------------------------------------#####

variable "function_app_name" {
  type = string
}

#####-------------------------------------- Storage Account-------------------------------------------#########

variable "contianer_name" {
  type = string
}

variable "contianer_access_type" {
  type        = string
  description = "private or public"
}
variable "storage_account_name" {
  type = string
}

##### --------------------------------------- Web App ----------------------------------------------------#####

variable "web_application_name" {
  type = string
}

