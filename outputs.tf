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
output "web_subnet_name" {
  description = "Name of the created web subnet."
  value       = module.web_subnet.subnet_name
}

output "web_subnet_id" {
  description = "Azure resource ID of the created web subnet."
  value       = module.web_subnet.subnet_id
}

output "web_subnet_address_prefixes" {
  description = "Address prefixes of the created web subnet."
  value       = module.web_subnet.subnet_address_prefixes
}

output "app_subnet_name" {
  description = "Name of the created app subnet."
  value       = module.app_subnet.subnet_name
}

output "app_subnet_id" {
  description = "Azure resource ID of the created app subnet."
  value       = module.app_subnet.subnet_id
}

output "app_subnet_address_prefixes" {
  description = "Address prefixes of the created app subnet."
  value       = module.app_subnet.subnet_address_prefixes
}

output "data_subnet_name" {
  description = "Name of the created data subnet."
  value       = module.data_subnet.subnet_name
}

output "data_subnet_id" {
  description = "Azure resource ID of the created data subnet."
  value       = module.data_subnet.subnet_id
}

output "data_subnet_address_prefixes" {
  description = "Address prefixes of the created data subnet."
  value       = module.data_subnet.subnet_address_prefixes
}

output "default_nsg_name" {
  description = "Name of the created default Network Security Group."
  value       = module.default_nsg.network_security_group_name
}

output "default_nsg_id" {
  description = "Azure resource ID of the created default Network Security Group."
  value       = module.default_nsg.network_security_group_id
}

output "default_subnet_nsg_association_id" {
  description = "Azure resource ID of the default subnet to nsg associate"
  value       = module.default_subnet_nsg_association.association_id

}


