variable "project_name" {
  description = "Name of the project used for Azure resource naming"
  type        = string
  default     = "tfplayground"

  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 20
    error_message = "The project_name must be between 3 and 20"
  }
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "The environment must be one of: dev, test, prod."
  }
}

variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Default tags for Azure resources"
  type        = map(string)
  default = {
    owner      = "mike"
    managed_by = "terraform"
    purpose    = "learning"
  }
}

variable "virtual_network_address_space" {
  description = "Adress space for the Vnet"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}


variable "web_subnet_address_prefixes" {
  description = "Address prefixes for the web subnet."
  type        = list(string)
  default     = ["10.10.2.0/24"]
}

variable "app_subnet_address_prefixes" {
  description = "Address prefixes for the app subnet."
  type        = list(string)
  default     = ["10.10.2.0/24"]
}

variable "data_subnet_address_prefixes" {
  description = "Address prefixes for the data subnet."
  type        = list(string)
  default     = ["10.10.3.0/24"]
}

