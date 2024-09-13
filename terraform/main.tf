terraform {
  backend "gcs" {
    bucket  = "for-terraform"
    prefix  = "terraform/state"
  }
}

module "vpc" {
    source = "./modules/vpc"
    project_id = var.project_id
}