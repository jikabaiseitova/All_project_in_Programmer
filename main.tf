module "vpc" {
  source       = "./modules/vpc"
  region       = var.region
  subnet_cidrs = var.subnet_cidrs
  project_id   = var.project_id
}
