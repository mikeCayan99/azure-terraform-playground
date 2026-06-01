output "resource_group_name" {
  description = "Name of the created Azure Resource Group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_location" {
  description = "Azure region of the createds Resource Group"
  value       = azurerm_resource_group.main.location
}

output "resource_group_id" {
  description = "Azure resource ID of the created RG"
  value       = azurerm_resource_group.main.id
}