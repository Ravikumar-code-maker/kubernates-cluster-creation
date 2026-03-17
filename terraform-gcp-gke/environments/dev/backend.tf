terraform {
  backend "gcs" {
    bucket = "terraform-gke-state-bucket"
    prefix = "dev"
  }
}
