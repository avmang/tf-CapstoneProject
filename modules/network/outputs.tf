output "network" {
  value = google_compute_network.vpc.self_link
}

output "subnetwork" {
  value = google_compute_subnetwork.private_subnet.self_link
}

output "network_name" {
  value = google_compute_network.vpc.name  
}