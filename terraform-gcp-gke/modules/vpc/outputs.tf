output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.private_subnet.name
}

output "subnet_id" {
  value = google_compute_subnetwork.private_subnet.id
}
