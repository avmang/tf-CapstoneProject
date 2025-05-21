resource "google_service_account" "k8s_gar_access" {
  account_id   = "gke-gar-access"
  display_name = "mavoyan-k8s"
  description  = "Service account for GKE to access GAR"
}

resource "google_service_account" "gke_db_access" {
  account_id   = "gke-db-access"
  display_name = "Access Cloud SQL from GKE"
}
