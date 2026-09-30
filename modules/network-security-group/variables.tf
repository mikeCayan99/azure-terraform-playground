variable "name" {
  description = "Name of the network security group."
  type        = string
}

variable "location" {
  description = "Azure region where the network security group will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the network security group will be deployed."
  type        = string
}

variable "environment" {
  description = "Deployment environment, such as dev, test, or prod."
  type        = string
}

variable "tags" {
  description = "Tags to apply to the network security group."
  type        = map(string)
}

variable "security_rules" {
  description = "List of security rules to configure on the network security group."

  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
  default = []
}



