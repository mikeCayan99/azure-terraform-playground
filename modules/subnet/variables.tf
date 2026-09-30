variable "name" {
  description = "Name of the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group containing the virtual network."
  type        = string
}

variable "virtual_network_name" {
  description = "Name of the virtual network where the subnet will be created."
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes assigned to the subnet in CIDR notation."
  type        = list(string)
}

