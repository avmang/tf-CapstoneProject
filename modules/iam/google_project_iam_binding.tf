resource "google_artifact_registry_repository_iam_binding" "k8s_gar_access" {
  project = var.project_id
  location = var.region
  repository = var.gar_repo.name
  role = "roles/artifactregistry.reader"
  members = [
    "serviceAccount:${google_service_account.k8s_gar_access.account_id}@${var.project_id}.iam.gserviceaccount.com"
  ]
}

# resource "google_artifact_registry_repository_iam_binding" "gar_creator" {
#   project = var.project_id
#   location = var.region
#   repository = var.gar_repo.name
#   role = "roles/artifactregistry.admin"
#   members = [
#     "serviceAccount:mavoyan-terraform-github@gd-gcp-internship-devops.iam.gserviceaccount.com" #change
#   ]
# }

# resource "google_project_iam_member" "vpc_creator" {
#   project = var.project_id
#   role    = "roles/compute.networkAdmin"
#   member  = "serviceAccount:mavoyan-terraform-github@gd-gcp-internship-devops.iam.gserviceaccount.com"
# }

# resource "google_project_iam_member" "sa_creator" {
#   project = var.project_id
#   role    = "roles/iam.serviceAccountAdmin"
#   member  = "serviceAccount:mavoyan-terraform-github@gd-gcp-internship-devops.iam.gserviceaccount.com"
# }



