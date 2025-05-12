# resource "google_compute_firewall" "allow_ssh" {
#   name    = "allow-ssh"
#   network    = google_compute_network.vpc.name


#   allow {
#     protocol = "tcp"
#     # ports    = ["22"] #open port for ingress if needed 
#   }

#   source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["allow-"] # change this name
# }