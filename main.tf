module "gar" {
  source     = "./modules/gar"
  project_id = var.project_id
  region     = var.region
  depends_on = [ module.iam ]
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
  network    = var.network
  subnetwork = var.subnetwork
  # sa_email   = module.iam.k8s-sa-email
  depends_on = [module.iam]
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
  project_number = var.project_number
}

module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
}

module "storage" {
  source = "./modules/storage"
  region = var.region
  network = data.google_compute_network.mavoyan-network.self_link
  project_id = var.project_id
  db_password = var.db_password
  depends_on = [ module.network ]
}

module "gce" {
  source = "./modules/gce"
  region = var.region
  network = var.network
  project_id = var.project_id
  subnetwork = var.subnetwork
}
# module "test_psa" {
#   source  = "terraform-google-modules/sql-db/google//modules/private_service_access"
#   version = "~> 25.2"

#   project_id      = var.project_id
#   vpc_network     = module.network.network_name
#   address         = "10.220.0.0"
#   deletion_policy = "ABANDON"
#   depends_on      = [ module.network ]
# }

data "google_compute_network" "mavoyan-network" {
  name = var.network
}

# Output the self-link
# output "vpc_self_link" {
#   value = data.google_compute_network.my_network_data.self_link
# }