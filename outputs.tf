output "resource_group_name" {
  description = "Name of the created Azure Resource Group"
  value       = module.resource_group.resource_group_name
}

output "resource_group_location" {
  description = "Azure region of the createds Resource Group"
  value       = module.resource_group.resource_group_location
}

output "resource_group_id" {
  description = "Azure resource ID of the created RG"
  value       = module.resource_group.resource_group_id
}

output "virtual_network_name" {
  description = "Name of the created Azure Vnet"
  value       = module.virtual_network.virtual_network_name
}

output "virtual_network_id" {
  description = "Azure resource ID of the Vnet"
  value       = module.virtual_network.virtual_network_id
}

output "virtual_network_address_space" {
  description = "Adress space of the Vnet"
  value       = module.virtual_network.virtual_network_address_space
}
output "default_subnet_name" {
  description = "Name of the created default subnet."
  value       = module.default_subnet.subnet_name
}

output "default_subnet_id" {
  description = "Azure resource ID of the created default subnet."
  value       = module.default_subnet.subnet_id
}

output "default_subnet_address_prefixes" {
  description = "Address prefixes of the created default subnet."
  value       = module.default_subnet.subnet_address_prefixes
}




