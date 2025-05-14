variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "europe-north1"
}

variable "network" {
  description = "The name of the VPC network for GKE cluster."
  type        = string
}