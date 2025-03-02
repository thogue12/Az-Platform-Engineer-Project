output "app_service_plan_id" {
  value = azurerm_service_plan.api_app.id
}

output "web_app_service_plan_id" {
  value = azurerm_service_plan.web_app.id
}