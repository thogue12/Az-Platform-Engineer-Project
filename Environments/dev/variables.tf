variable "environment" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type = string
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