resource "google_container_cluster" "gke" {
  name     = var.clsuter_name
  location = var.region

  netwrok   = var.network
  subnetwork = var.subnetwork

  remove_default_node_pool = true
  initial_node_count       = 1


}
