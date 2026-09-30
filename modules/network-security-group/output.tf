output "network_security_group_name" {
  description = "Name of the deployed network security group."
  value       = azurerm_network_security_group.main.name
}

output "network_security_group_id" {
  description = "Resource ID of the deployed network security group."
  value       = azurerm_network_security_group.main.id
}
