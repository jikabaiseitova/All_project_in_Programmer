variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "region" {
  description = "The region in which to create the cluster and resources."
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

variable "cluster_name" {
  description = "The name of the Kubernetes cluster."
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the cluster."
  type        = number
}

variable "machine_type" {
  description = "The machine type to use for the nodes."
  type        = string
}


