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

module "default_subnet" {
  source = "./modules/subnet"

  name                 = "snet-${var.project_name}-${var.environment}-default"
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  address_prefixes     = var.subnet_address_prefixes
}



