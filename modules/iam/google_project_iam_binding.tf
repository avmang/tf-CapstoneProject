resource "google_artifact_registry_repository_iam_binding" "binding" {
  project = var.project_id
  location = var.region
  repository = var.gar_repo.name
  role = "roles/artifactregistry.reader"
  members = [
    "serviceAccount:${google_service_account.k8s_gar_access.account_id}@${var.project_id}.iam.gserviceaccount.com"
  ]
}

