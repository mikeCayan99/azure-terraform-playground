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