resource "google_service_account" "k8s_gar_access" {
  account_id   = "gke-gar-access"
  display_name = "mavoyan-k8s"
  description  = "Service account for GKE to access GAR"
}