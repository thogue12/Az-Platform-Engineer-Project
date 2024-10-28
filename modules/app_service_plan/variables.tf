variable "name" {
  type = string
}
variable "location" {
  type = string
}
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

variable "sql_server_id" {
  type = string
}

variable "virtual_network_id" {
  type = string
}

variable "web_app_sku_name" {
  type = string
  description = "can be B2, B3, D1, F1,I2-3,P1v2,P2v2, S1-3"
}

variable "api_sku_name" {
  type = string
  description = "can be B2, B3, D1, F1,I2-3,P1v2,P2v2, S1-3"
}
