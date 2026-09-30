variable "subnet_id" {
  description = "Resource ID of the subnet to associate with the network security group."
  type        = string
}

variable "network_security_group_id" {
  description = "Resource ID of the network security group to associate with the subnet."
  type        = string
}

