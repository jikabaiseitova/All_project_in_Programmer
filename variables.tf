variable "region" {
  description = "Регион Google Cloud"
  type        = string
  default     = "us-central1"
}

variable "subnet_cidrs" {
  description = "Список CIDR-блоков для подсетей"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "project_id" {
  description = "ID проекта Google Cloud"
  type        = string
  default     = "gitlab-cicd-431608"
}

