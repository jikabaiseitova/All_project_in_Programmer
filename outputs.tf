output "cluster_name" {
  description = "Имя GKE кластера."
  value       = google_container_cluster.primary.name
}

output "cluster_endpoint" {
  description = "Конечная точка GKE кластера."
  value       = google_container_cluster.primary.endpoint
}

output "cluster_master_version" {
  description = "Мастер версия GKE кластера."
  value       = google_container_cluster.primary.master_version
}

output "public_instance_ip" {
  description = "Внешний IP публичного VM."
  value       = google_compute_instance.public_instance.network_interface[0].access_config[0].nat_ip
}

output "private_instance_ip" {
  description = "Внутренний IP приватного VM."
  value       = google_compute_instance.private_instance.network_interface[0].network_ip
}
