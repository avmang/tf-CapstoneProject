# resource "google_service_networking_connection" "private_vpc_connection" {
#   network = "projects/${var.project_id}/global/networks/default"
#   service                 = "servicenetworking.googleapis.com"
#   reserved_peering_ranges = [google_compute_global_address.private_ip_address.name]
# }