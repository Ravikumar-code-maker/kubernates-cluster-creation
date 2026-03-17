module "vpc" {
  source = "../../modules/vpc"

  vpc_name     = "dev-vpc"
  subnet_name  = "dev-subnet"
  subnet_cidr  = "10.10.0.0/16"
  pods_cidr    = "10.20.0.0/16"
  services_cidr = "10.30.0.0/16"
  region        = var.region
}

module "nat" {
  source      = "../../mdoules/nat"
  router_name = "dev-router"
  nat_name    = "dev-nat"
  network     = module.vpc.vpc_name
  region      = var.region
}

module "iam" {
  source               = "../../mdoules/iam"

  project_id           = var.project_id
  service_account_name = "gke-service-account"
}

module "gke" {
  source = "../../modules/gke"

  cluster_name    = "dev-gke"
  region          = var.region
  network         = module.vpc.vpc_name
  subnetwork      = module.vpc.subnet_name
  node_count      = 2
  service_account = "gke-service-account@${var.project_id}.iam.gserviceaccount.com"
}
