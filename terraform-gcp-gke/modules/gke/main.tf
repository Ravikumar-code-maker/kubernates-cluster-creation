resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  project  = var.project_id   # ✅ ADD THIS

  location = var.region
 
  deletion_protection = false

  network   = var.network
  subnetwork = var.subnetwork

  remove_default_node_pool = true
  initial_node_count       = 1

  ip_allocation_policy {}
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  project    = var.project_id   # ✅ ADD THIS
  cluster    = google_container_cluster.gke.name
  location   = var.region
  node_count = var.node_count

  node_config {
    machine_type     = "e2-medium"
    service_account  = var.service_account

    oauth_scopes = [
       "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
