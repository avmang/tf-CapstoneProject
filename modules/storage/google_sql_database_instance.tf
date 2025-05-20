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

resource "google_sql_database" "petclinic" {
  name     = "petclinic"
  instance = google_sql_database_instance.mysql-instance.name
}


resource "google_sql_user" "petclinic_user" {
  name     = "petclinic"
  instance = google_sql_database_instance.mysql-instance.name
  password_wo  = var.db_password
}



