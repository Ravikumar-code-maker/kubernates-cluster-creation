variable "cluster_name" {
  type  = string  
  description = "The name of the GKE cluster"  
}

variable "node_locations" {
  type = list(string)
}

variable "project_id" {
  type = string
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
