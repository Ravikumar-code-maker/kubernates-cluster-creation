resource "google_compute_firewall" "allow_internal" {
  name    = "allow-internal"
  network = var.network

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }

  source_ranges = ["10.0.0.0/8"]
}
resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = var.network

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["0.0.0.0/0"]
}
