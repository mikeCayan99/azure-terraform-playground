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


module "default_nsg" {
  source = "./modules/network-security-group"

  name                = "nsg-${var.project_name}-${var.environment}-default"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  tags                = var.tags

}

module "default_subnet_nsg_association" {
  source = "./modules/subnet-nsg-association"

  subnet_id                 = module.default_subnet.subnet_id
  network_security_group_id = module.default_nsg.network_security_group_id
}



