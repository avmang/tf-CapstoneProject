terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.34.0"
    }
  }

  # backend "gcs" {
  #   bucket = "mavoyan-cp-terraform-backend"
  #   prefix = "terraform/state"
  # }
  cloud {
    organization = "MavoyanCapstoneProject"

    workspaces {
      name = "capstone-project-terraform-github-actions"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}