resource "google_compute_instance" "helm_deployer_sonarqube" {
  name         = "helm-deployer-sonarqube"
  machine_type = "e2-medium"
  zone = "${var.region}-a"
  project = var.project_id

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    access_config {} 
  }

  service_account {
    email  = "mavoyan-github-actions@${var.project_id}.iam.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  tags = ["gke-access", "sonarqube"] 
  lifecycle {
    ignore_changes = [
      metadata["ssh-keys"]
    ]
  }
}
