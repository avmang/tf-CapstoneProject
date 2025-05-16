variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
  default     = "gd-gcp-internship-devops"
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "europe-north1"
}

variable "GOOGLE_CREDENTIALS" {
  description = "Service account credentials"
  type        = string
  sensitive   = true
}