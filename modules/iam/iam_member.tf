# resource "google_project_iam_member" "github_actions_gke_access" { #no need
#   project = var.project_id
#   role    = "roles/container.developer"
#   member  = "serviceAccount:mavoyan-github-actions@${var.project_id}.iam.gserviceaccount.com"
# }
# resource "google_project_iam_member" "ci_cd_cluster_admin" {
#   project = var.project_id
#   role    = "roles/container.admin"
#   member  = "serviceAccount:mavoyan-github-actions@${var.project_id}.iam.gserviceaccount.com"
# }

# # resource "google_service_account_iam_member" "k8s_sa_impersonation" {
# #   service_account_id = google_service_account.gke_db_access.name
# #   role               = "roles/iam.workloadIdentityUser"
# #   member             = "serviceAccount:${var.project_id}.svc.id.goog[mavoyan/petclinic-sa]"
# # }