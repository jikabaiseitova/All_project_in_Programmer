terraform {
  backend "gcs" {
    bucket  = "for_terraform"
    prefix  = "terraform/state"
  }
}

provider "google" {
  region  = var.region
  project = var.project_id
}

module "vpc" {
  source     = "./modules/vpc"
  region      = var.region
  subnet_cidrs = var.subnet_cidrs
  project_id  = var.project_id
}

module "gke" {
  source        = "./modules/gke"
  region        = var.region
  network_id    = google_compute_network.vpc.id
  subnetwork_id = google_compute_subnetwork.subnet[0].id
}