resource "google_sql_database_instance" "mysql-instance" {
  name             = "mavoyan-private-mysql-instance"
  region           = var.region
  database_version = "MYSQL_8_0"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled                                  = false
      private_network                               = var.network
      enable_private_path_for_google_cloud_services = true
    }
  }
}