variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "europe-north1"
}

variable "network" {
  description = "The name of the VPC network for GKE cluster."
  type        = string
}

variable "db_password" {
  description = "Password for Petclinic DB user"
  type        = string
  sensitive   = true
}

# variable "network_connnection" {
#   description = "Link of VPC network to be used for establishing a private service networking connection for Cloud SQL."
#   type        = string
# }

variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}