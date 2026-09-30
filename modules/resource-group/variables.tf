variable "project_name" {
  description = "Name of the project used for resource naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment used for resource naming and tagging"
  type        = string
}

variable "location" {
  description = "Azure region where the resource group will be created"
  type        = string
}

variable "tags" {
  description = "Tags applied to the resource group"
  type        = map(string)
}

