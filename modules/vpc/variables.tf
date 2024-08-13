variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "subnet_cidrs" {
  description = "List of CIDR blocks for subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}
