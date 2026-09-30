output "subnet_name" {
  description = "Name of the deployed subnet."
  value       = azurerm_subnet.main.name
}

output "subnet_id" {
  description = "Resource ID of the deployed subnet."
  value       = azurerm_subnet.main.id
}


output "subnet_address_prefixes" {
  description = "Address prefixes assigned to the deployed subnet."
  value       = azurerm_subnet.main.address_prefixes
}


