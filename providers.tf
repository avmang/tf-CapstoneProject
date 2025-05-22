terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.34.0"
    }
  }

  cloud {
    organization = "MavoyanCapstoneProject"

    workspaces {
      name = "tf-CapstoneProject"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}