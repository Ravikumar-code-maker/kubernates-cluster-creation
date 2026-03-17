module "vpc" {
  source = "../../modules/vpc"

  vpc_name     = "dev-vpc"
  subnet_name  = "dev-subnet"
  subnet_cidr  = "10.10.0.0/16"
  pods_cidr    = "10.20.0.0/16"
  services_cidr = "10.30.0.0/16"
  region        = var.region
}
