# Определение провайдера Google Cloud
provider "google" {
  project = var.project_id
  region  = var.region
}

# Вызов модуля для создания VPC и подсетей
module "vpc" {
  source    = "./modules/vpc"
  vpc_name  = "my-vpc-network"
  project_id = var.project_id
  region    = var.region
  subnet_cidrs = var.subnet_cidrs
}

# Создание GKE-кластера
resource "google_container_cluster" "primary" {
  name     = "gke-cluster"
  location = var.region
  network  = module.vpc.vpc.id

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  initial_node_count = 1
  subnetwork = module.vpc.subnet[0].id
}

# Конфигурация бекенда для хранения состояния Terraform в Google Cloud Storage
terraform {
  backend "gcs" {
    bucket  = "for-terraform"
    prefix  = "terraform/state"
  }
}
