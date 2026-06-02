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
