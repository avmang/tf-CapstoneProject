resource "google_project_iam_member" "github_actions_gke_access" {
  project = var.project_id
  role    = "roles/container.developer"
  member  = "serviceAccount:mavoyan-github-actions@${var.project_id}.iam.gserviceaccount.com"
}