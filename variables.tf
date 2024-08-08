variable "project_id" {
  description = "ID проекта, в котором будут созданы ресурсы."
  type        = string
}

variable "region" {
  description = "Регион, в котором будут созданы ресурсы."
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Имя GKE кластера."
  type        = string
}

variable "node_count" {
  description = "Количество узлов в кластере."
  type        = number
  default     = 3
}

variable "node_machine_type" {
  description = "Тип машин узлов."
  type        = string
  default     = "n1-standard-1"
}

variable "vpc_name" {
  description = "Имя VPC."
  type        = string
  default     = "my-vpc"
}

variable "subnet_cidr_public" {
  description = "CIDR блок для публичной подсети."
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_cidr_private" {
  description = "CIDR блок для приватной подсети."
  type        = string
  default     = "10.0.2.0/24"
}
