# resource "google_compute_global_address" "private_ip_address" {
#   name          = "mavoyan-private-ip-address"
#   purpose       = "VPC_PEERING"
#   address_type  = "INTERNAL"
#   prefix_length = 16
#   network       = google_compute_network.vpc.id
# }