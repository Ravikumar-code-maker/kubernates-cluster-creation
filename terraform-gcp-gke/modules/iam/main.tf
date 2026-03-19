resource "google_service_account" "gke_sa" {
  account_id   = "gke-service-account"
  display_name = "GKE Service Account"
}

//Each node (VM) runs with that service account.
//Then this IAM role allows the node to interact with Google services.

resource "google_project_iam_member" "gke_node_role" {
  project = var.project_id   # <== this was missing
  role    = "roles/container.nodeServiceAccount"
  member  = "serviceAccount:${google_service_account.gke_sa.email}"
}

resource "google_project_iam_member" "gke_registry" {
  role   = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.gke_sa.email}"
}
