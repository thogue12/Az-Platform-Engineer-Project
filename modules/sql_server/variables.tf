variable "sql_server_name" {
  type = string
}

variable "elasticpool_name" {
  type = string
}

variable "name" {
  type = string
}
variable "location" {
  type = string
}

variable "admin_login" {
  type = string
}
variable "admin_login_password" {
  type = string
  sensitive = true
}

variable "subnet_id" {
  type = string
}

variable "vnet_rule_name" {
  type = string
}