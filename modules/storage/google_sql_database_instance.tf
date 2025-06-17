resource "google_sql_database_instance" "mysql-instance" {
  name             = "mavoyan-public-mysql-instance"
  region           = var.region
  database_version = "POSTGRES_15"
  project          = var.project_id

  settings {
    tier = "db-f1-micro"

    ip_configuration {
      ipv4_enabled = true  
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
  password  = var.db_password
}

