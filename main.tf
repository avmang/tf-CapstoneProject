module "gar" {
  source     = "./modules/gar"
  project_id = var.project_id
  region     = var.region
}

module "gke" {
  source     = "./modules/gke"
  project_id = var.project_id
  region     = var.region
  network    = module.network.network
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

# module "storage" {
#   source = "./modules/storage"
#   # project_id = var.project_id
#   # region = var.region
# }

