output "resource_group_name" {
  description = "Name of the created Azure resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "Resource ID of the created Azure resource group"
  value       = azurerm_resource_group.main.id
}

output "resource_group_location" {
  description = "Azure region of the created resource group"
  value       = azurerm_resource_group.main.location
}

