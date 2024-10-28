output "virtual_network_name" {
  value = azurerm_virtual_network.this_vnet.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.this_vnet.id
}

output "subnet_address" {
  value = azurerm_subnet.this_subnet.address_prefixes
}

output "subnet_id" {
  value = azurerm_subnet.this_subnet.id
}