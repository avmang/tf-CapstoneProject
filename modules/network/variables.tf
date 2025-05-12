variable "network_name" {
  description = "VPC Network Name"
  type        = string
  default     = "mavoyan-private-network"
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "europe-north1"
}

variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
  default     = "gd-gcp-internship-devops"
}