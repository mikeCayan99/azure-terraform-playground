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

output "web_nsg_name" {
  description = "Name of the Web Network Security Group."
  value       = module.web_nsg.network_security_group_name
}

output "web_nsg_id" {
  description = "Azure resource ID of the Web Network Security Group."
  value       = module.web_nsg.network_security_group_id
}

output "app_nsg_name" {
  description = "Name of the App Network Security Group."
  value       = module.app_nsg.network_security_group_name
}

output "app_nsg_id" {
  description = "Azure resource ID of the App Network Security Group."
  value       = module.app_nsg.network_security_group_id
}

output "data_nsg_name" {
  description = "Name of the Data Network Security Group."
  value       = module.data_nsg.network_security_group_name
}

output "data_nsg_id" {
  description = "Azure resource ID of the Data Network Security Group."
  value       = module.data_nsg.network_security_group_id
}

output "web_subnet_nsg_association_id" {
  description = "Azure resource ID of the Web subnet to NSG association."
  value       = module.web_subnet_nsg_association.association_id
}

output "app_subnet_nsg_association_id" {
  description = "Azure resource ID of the App subnet to NSG association."
  value       = module.app_subnet_nsg_association.association_id
}

output "data_subnet_nsg_association_id" {
  description = "Azure resource ID of the Data subnet to NSG association."
  value       = module.data_subnet_nsg_association.association_id
}


