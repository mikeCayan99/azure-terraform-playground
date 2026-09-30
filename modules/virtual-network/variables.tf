variable "project_name" {
  description = "Name of the project used for resource naming."
  type        = string
}

variable "environment" {
  description = "Deployment environment, such as dev, test, or prod."
  type        = string
}

variable "location" {
  description = "Azure region where the virtual network will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the virtual network will be deployed."
  type        = string
}

variable "address_space" {
  description = "Address space assigned to the virtual network in CIDR notation."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to the virtual network."
  type        = map(string)
}

