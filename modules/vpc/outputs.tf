# Экспортируем ID созданной VPC
output "vpc_id" {
  description = "ID созданной VPC"
  value       = google_compute_network.vpc.id
}

# Экспортируем ID созданных подсетей
output "subnet_ids" {
  description = "Список ID созданных подсетей"
  value       = google_compute_subnetwork.subnet[*].id
}
