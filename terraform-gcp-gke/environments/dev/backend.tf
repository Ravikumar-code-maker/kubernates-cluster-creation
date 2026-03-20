terraform {
  backend "gcs" {
    bucket = "my-terraform-state-752916751687"
    prefix = "dev"
  }
}
