module "gar" {
  source     = "./modules/gar"
  project_id = var.project_id
  region     = var.region
  # depends_on = [ module.iam ]
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
  # network    = module.network.vpc
  # subnetwork = module.network.subnetwork
  # sa_email   = module.iam.k8s-sa-email
  # depends_on = [module.iam]
}

# module "iam" {
#   source     = "./modules/iam"
#   project_id = var.project_id
#   project_number = var.project_number
# }

# module "network" {
#   source     = "./modules/network"
#   project_id = var.project_id
#   region     = var.region
# }

module "storage" {
  source = "./modules/storage"
  region = var.region
  # network = module.network.vpc
  project_id = var.project_id
  db_password = var.db_password
  # depends_on = [ module.network ]
}

# module "gce" {
#   source = "./modules/gce"
#   region = var.region
#   network = module.network.vpc
#   project_id = var.project_id
#   subnetwork = module.network.subnetwork_name
# }
