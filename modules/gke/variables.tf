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

variable "node_count" {
  description = "Node count"
  type        = number
  default     = 1
}

variable "network" {
  description = "The name of the VPC network for GKE cluster."
  type        = string
}

variable "subnetwork" {
  description = "The name of the subnetwork."
  type        = string
}

variable "sa" {
  description = "Service Account for gke."
  type        = string
}