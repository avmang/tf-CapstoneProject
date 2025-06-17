# resource "google_compute_global_address" "private_ip_address" {
#   name          = "mavoyan-private-ip-address"
#   purpose       = "VPC_PEERING"
#   address_type  = "INTERNAL"
#   prefix_length = 16
#   network       = "projects/${var.project_id}/global/networks/default"
# }