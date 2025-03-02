resource "azurerm_virtual_network" "this_vnet" {
  name = var.vnet_name
  address_space = var.vnet_address
  location = var.location
  resource_group_name = var.name
}

resource "azurerm_subnet" "this_subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.name
  virtual_network_name = azurerm_virtual_network.this_vnet.name
  address_prefixes     = var.subnet_address
  service_endpoints = [ "Microsoft.Sql", "Microsoft.Storage"] #remember to add this in order to setp the vnet rules on the sql server

  delegation {
    name = "functionapp_delegation"
    service_delegation {
      name = "Microsoft.Web/serverFarms"
      actions = [
        "Microsoft.Network/virtualNetworks/subnets/action",
      ]
    }
  }
}