module "vpc" {
  source = "../../modules/vpc"

  vpc_name     = "dev-vpc"
  subnet_name  = "dev-subnet"
  subnet_cidr  = "10.10.0.0/16"
  pods_cidr    = "10.20.0.0/16"
  service_cidr = "10.30.0.0/16"
  region        = var.region
}

module "nat" {
  source      = "../../modules/nat"
  router_name = "dev-router"
  nat_name    = "dev-nat"
  network     = module.vpc.vpc_name
  region      = var.region
}

module "iam" {
  source               = "../../modules/iam"
  project_id = "project-27aed37f-8011-4e5d-841"
  service_account_name = "gke-service-account"
}

module "gke"{
  source = "../../modules/gke"

  cluster_name    = "dev-gke"
  project_id      = "project-27aed37f-8011-4e5d-841"  
  node_locations  = ["us-central1-a", "us-central1-b"]
  region          = "us-central1"   # ✅ change this
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.subnet_name
  node_count      = 2
  service_account = "gke-service-account@${var.project_id}.iam.gserviceaccount.com"
}
