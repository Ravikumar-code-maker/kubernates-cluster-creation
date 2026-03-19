variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR for subnet"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "pods_cidr" {
  description = "CIDR range for pods"
  type        = string
}

variable "service_cidr" {
  description = "CIDR range for services"
  type        = string
}
