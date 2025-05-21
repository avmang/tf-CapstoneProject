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

variable "db_password" {
  description = "Password for Petclinic DB user"
  type        = string
  sensitive   = true
}

variable "project_number" {
  description = "The number of the project in which to create the resources."
  type        = number
  default     = 999898490929
}

variable "network" {
  description = "Network"
  type        = string
  default = "mavoyan-network"
}


variable "subnetwork" {
  description = "Network"
  type        = string
  default     = "mavoyan-subnetwork"
}