terraform {
  backend "gcs" {
    bucket  = "for-terraform"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project     = "gitlab-cicd-431608"                           # ID проекта в GCP
  region      = "us-central1"                                   
}

# Пример ресурсов
resource "google_compute_network" "default" {
  name = "default-network"
}

resource "google_compute_subnetwork" "default" {
  name          = "default-subnetwork"
  ip_cidr_range  = "10.0.0.0/24"
  network        = google_compute_network.default.id
  region         = "us-central1"
}
