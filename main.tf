terraform {
  backend "local" {
    path = "terraform.tfstate"  # Путь к локальному файлу состояния
  }
}

provider "google" {
  credentials = file("/Users/jikab/Desktop/CICD/gitlab-cicd-431608-b129d9fbffc9.json")  # Путь к файлу с ключом сервисного аккаунта
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

