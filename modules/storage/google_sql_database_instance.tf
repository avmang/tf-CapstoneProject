resource "google_sql_database_instance" "mysql-instance" {
  name             = "mavoyan-private-mysql-instance"
  region           = var.region
  database_version = "POSTGRES_15"
  project           = var.project_id

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled                                  = false
      private_network                               = var.network
      enable_private_path_for_google_cloud_services = true # +
    }
  }
}

# resource "google_sql_user" "app_user" {
#   name     = "appuser"
#   instance = google_sql_database_instance.mysql-instance.name
  
# }

# resource "google_sql_database" "app_db" {
#   name     = "appdb"
#   instance = google_sql_database_instance.mysql-instance.name
# }