variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "network_id" {
  description = "The ID of the VPC network"
  type        = string
}

variable "subnetwork_id" {
  description = "The ID of the subnetwork"
  type        = string
}