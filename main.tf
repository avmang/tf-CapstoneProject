module "gar" {
  source     = "./modules/gar"
  project_id = var.project_id
  region     = var.region
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
  network    = module.network.vpc
  subnetwork = module.network.subnetwork
  sa         = module.iam.k8s-sa
  depends_on = [module.iam]
}

module "iam" {
  source     = "./modules/iam"
  project_id = var.project_id
  gar_repo = module.gar.gar_repo
}

module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
}

module "storage" {
  source = "./modules/storage"
  region = var.region
  network = module.network.vpc
  depends_on = [ module.network ]
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