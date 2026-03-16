variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "service_account_name" {
  description = "Service account name"
  type        = string
  default     = "gke-service-account"
}
