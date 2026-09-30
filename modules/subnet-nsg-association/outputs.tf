output "association_id" {
  description = "Resource ID of the subnet and network security group association."
  value       = azurerm_subnet_network_security_group_association.main.id
}

