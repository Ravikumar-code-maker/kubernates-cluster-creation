variable "network" {
  description = "vpc network name"
  type        = string
}

varibale "ssh_source_ranges" {
  description = "Allowed-IP ranges for ssh"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

varible "internal_cidr" {
  description = "Internal CIDR"
  type        = string
  default     = "10.0.0.0/8"
}
