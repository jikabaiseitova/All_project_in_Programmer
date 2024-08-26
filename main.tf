provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source       = "./modules/vpc"
  project_id   = var.project_id
  network_name = var.network_name
  subnet_names = var.subnet_names
}

resource "google_project_iam_member" "container_sa_user" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "user:<ваш_email_в_формате@example.com>"  # Замените на ваш email
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  network    = module.vpc.network_id
  subnetwork = module.vpc.subnets[0]

  initial_node_count = var.node_count

  master_auth {
    username = ""
    password = ""
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}


