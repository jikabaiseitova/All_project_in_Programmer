resource "google_compute_network" "vpc" {
  name                    = "my-vpc-network"
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  count         = length(var.subnet_cidrs)
  name          = "subnet-${count.index}"
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.subnet_cidrs[count.index]
  region        = var.region
  project       = var.project_id
}