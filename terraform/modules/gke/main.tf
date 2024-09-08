resource "google_container_cluster" "primary" {
  name               = "my-gke-cluster"
  location           = var.region
  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  network    = var.network_id
  subnetwork = var.subnetwork_id

  lifecycle {
    ignore_changes = [node_config[0].oauth_scopes]
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name               = "primary-node-pool"
  location           = var.region
  cluster            = google_container_cluster.primary.name
  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}