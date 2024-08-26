variable "project_id" {
  description = "The ID of the project where the VPC will be created."
  type        = string
}

variable "network_name" {
  description = "The name of the VPC network."
  type        = string
}

variable "subnet_names" {
  description = "The names of the subnets."
  type        = list(string)
}

variable "region" {
  description = "The region in which to create the VPC and subnets."
  type        = string
}

