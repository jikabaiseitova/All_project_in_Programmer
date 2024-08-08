module "vpc" {
  source       = "./modules/vpc"
  region       = var.region
  subnet_cidrs = var.subnet_cidrs
  project_id   = var.project_id
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}
