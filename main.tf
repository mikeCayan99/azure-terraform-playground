module "resource_group" {
  source = "./modules/resource-group"

  project_name = var.project_name
  environment  = var.environment
  location     = var.location
  tags         = var.tags

}

module "virtual_network" {
  source = "./modules/virtual-network"

  project_name        = var.project_name
  environment         = var.environment
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.virtual_network_address_space
  tags                = var.tags
}

