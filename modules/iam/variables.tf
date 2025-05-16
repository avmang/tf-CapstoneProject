variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "gar_repo" {
  description = "GAR repository name"
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "europe-north1"
}