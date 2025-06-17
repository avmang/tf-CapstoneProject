output "vpc" {
  value = google_compute_network.vpc.self_link
}

output "subnetwork" {
  value = google_compute_subnetwork.private_subnet.self_link
}

output "subnetwork_name" {
  value = google_compute_subnetwork.private_subnet.name
}
output "network_name" {
  value = google_compute_network.vpc.name  
}

# output "network_connection" {
#   value = google_service_networking_connection.private_vpc_connection.self_link
# }
