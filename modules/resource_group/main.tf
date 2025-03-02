resource "azurerm_resource_group" "this-rg" {
  name     = var.name 
  location = var.location                       
}