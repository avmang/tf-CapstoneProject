resource "google_artifact_registry_repository" "spring_repository" {
  location      = var.region
  project       = var.project_id
  repository_id = "mavoyan-spring-petclinic-repository"
  description   = "Docker repository for images"
  format        = "DOCKER"

}

resource "google_artifact_registry_repository_iam_binding" "k8s_gar_access" {
  project = var.project_id
  location = var.region
  repository = google_artifact_registry_repository.spring_repository.name
  role = "roles/artifactregistry.reader"
  members = [
    "serviceAccount:gke-gar-access@gd-gcp-internship-devops.iam.gserviceaccount.com" # to change
  ]
  
}