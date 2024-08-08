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

module "vpc" {
    source = "./modules/vpc"
    project_id = var.project_id
}