resource "google_compute_network" "vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnet" {
  count                   = length(var.subnet_names)
  name                    = var.subnet_names[count.index]
  network                 = google_compute_network.vpc.id
  region                  = var.region
  ip_cidr_range           = "10.0.${count.index}.0/24"
  project                 = var.project_id
}

