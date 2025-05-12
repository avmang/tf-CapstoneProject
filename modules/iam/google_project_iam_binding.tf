# resource "google_project_iam_binding" "gke_gar_pull" {
#   project = var.project_id
#   role    = "roles/artifactregistry.reader"
#   members = [ 
#     "serviceAccount:${google_service_account.k8s_gar_access.account_id}@${var.project_id}.iam.gserviceaccount.com"
#   ]
# }