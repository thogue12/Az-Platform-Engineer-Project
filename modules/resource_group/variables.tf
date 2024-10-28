variable "name" {
  type = string
  description = "name of the resource group"
}

variable "location" {
  type = string
  description = "location of the resource group"
}

variable "environment" {
  type = string
  description = "environment the resources will be built, dev,test,prod"
}