output "virtual_network_name" {
  description = "Name of the deployed virtual network."
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_id" {
  description = "Resource ID of the deployed virtual network."
  value       = azurerm_virtual_network.main.id
}

output "virtual_network_address_space" {
  description = "Address space assigned to the deployed virtual network."
  value       = azurerm_virtual_network.main.address_space
}



