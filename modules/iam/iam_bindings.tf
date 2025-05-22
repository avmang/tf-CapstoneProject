# resource "google_service_account_iam_binding" "github_actions_binding" {
#   service_account_id = "projects/${var.project_id}/serviceAccounts/mavoyan-github-actions@${var.project_id}.iam.gserviceaccount.com"
#   role               = "roles/iam.workloadIdentityUser"

#   members = [
#     "principalSet://iam.googleapis.com/projects/${var.project_number}/locations/global/workloadIdentityPools/github-pool/attribute.repository/avmang/CapstoneProject"
#   ]
# }

# resource "google_project_iam_member" "gke_db_access_bind" {
#   project =  var.project_id
#   role   = "roles/cloudsql.client"
#   member = "serviceAccount:${google_service_account.gke_db_access.email}"
# }
