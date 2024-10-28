resource "azurerm_resource_group" "this-rg" {
  name     = "rg-globaladmin-${var.environment}"  
  location = var.location                       
}