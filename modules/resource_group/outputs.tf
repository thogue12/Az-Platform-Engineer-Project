output "resource_group_name" {
  value = azurerm_resource_group.this-rg.name
}

output "location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.this-rg.location
}