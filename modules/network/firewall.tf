resource "google_compute_firewall" "allow_ssh_public" {
  name    = "allow-ssh-public"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"] 

  target_tags = ["gke-access", "ssh-enabled"]
}

resource "google_compute_firewall" "allow_sonarqube" {
  name    = "allow-sonarqube"
  network = var.network_name

  allow {
    protocol = "tcp"
    ports    = ["9000"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["sonarqube"]
}