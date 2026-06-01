variable "project_name" {
  description = "Name of the project used for Azure resource naming"
  type        = string
  default     = "tfplayground"


  validation {
    condition     = length(var.project_name) >= 3 && length(var.project_name) <= 20
    error_message = "The project_name must be between 3 and 20"
  }

}

variable "enviroment" {
  description = "Deployment enviroment"
  type        = string
  default     = "dev"


  validation {
    condition     = contains(["dev", "test", "prod"], var.enviroment)
    error_message = "The enviroment must be one of: dev, test, prod."
  }

}

variable "location" {
  description = "Azure region where resources wil lbe created"
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

