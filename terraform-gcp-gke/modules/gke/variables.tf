variable "cluster_name" {
  type  = string  
  description = "The name of the GKE cluster"  
}

variable "project_id" {
  type = string
}

variable "node_locations" {
  type = list(string)
}

variable "region" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "network" {
  type = string
}

variable "node_count" {
  type = number
}

variable "service_account" {
  type = string
}
