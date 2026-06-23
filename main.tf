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

module "web_subnet" {
  source = "./modules/subnet"

  name                 = "snet-${var.project_name}-${var.environment}-web"
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  address_prefixes     = var.web_subnet_address_prefixes
}

module "app_subnet" {
  source = "./modules/subnet"

  name                 = "snet-${var.project_name}-${var.environment}-app"
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  address_prefixes     = var.app_subnet_address_prefixes
}

module "data_subnet" {
  source = "./modules/subnet"

  name                 = "snet-${var.project_name}-${var.environment}-data"
  resource_group_name  = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  address_prefixes     = var.data_subnet_address_prefixes
}


module "web_nsg" {
  source = "./modules/network-security-group"

  name                = "nsg-${var.project_name}-${var.environment}-web"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  tags                = var.tags

  security_rules = [
    {
      name                       = "Allow-HTTPS-Inbound"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "443"
      source_address_prefix      = "Internet"
      destination_address_prefix = "*"
    }
  ]
}

module "app_nsg" {
  source = "./modules/network-security-group"

  name                = "nsg-${var.project_name}-${var.environment}-app"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  tags                = var.tags

  security_rules = [
    {
      name                       = "Allow-Web-To-App"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "8080"
      source_address_prefix      = var.web_subnet_address_prefixes[0]
      destination_address_prefix = "*"
    }
  ]
}

module "data_nsg" {
  source = "./modules/network-security-group"

  name                = "nsg-${var.project_name}-${var.environment}-data"
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  environment         = var.environment
  tags                = var.tags

  security_rules = [
    {
      name                       = "Allow-App-To-Data"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "1433"
      source_address_prefix      = var.app_subnet_address_prefixes[0]
      destination_address_prefix = "*"
    }
  ]
}

module "web_subnet_nsg_association" {
  source = "./modules/subnet-nsg-association"

  subnet_id                 = module.web_subnet.subnet_id
  network_security_group_id = module.web_nsg.network_security_group_id
}

module "app_subnet_nsg_association" {
  source = "./modules/subnet-nsg-association"

  subnet_id                 = module.app_subnet.subnet_id
  network_security_group_id = module.app_nsg.network_security_group_id
}

module "data_subnet_nsg_association" {
  source = "./modules/subnet-nsg-association"

  subnet_id                 = module.data_subnet.subnet_id
  network_security_group_id = module.data_nsg.network_security_group_id
}



