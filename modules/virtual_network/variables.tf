variable "vnet_name" {
  type = string
}

variable "vnet_address" {
  type =  list(string)
}

variable "location" {
  type = string
}

variable "name" {
  type = string
}

variable "environment" {
  type = string
  description = "The environment (dev, test, prod)"
}

variable "subnet_address" {
  type =  list(string)
}

variable "subnet_name" {
  type =  string
}
