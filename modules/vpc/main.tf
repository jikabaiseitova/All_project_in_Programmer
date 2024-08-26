# Определение VPC
resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

# Создание подсетей
resource "google_compute_subnetwork" "subnet" {
  count          = length(var.subnet_cidrs)
  name           = "subnet-${count.index}"
  network        = google_compute_network.vpc.id
  ip_cidr_range  = var.subnet_cidrs[count.index]
  region         = var.region
  project        = var.project_id
}
