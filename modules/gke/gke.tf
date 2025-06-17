resource "google_container_cluster" "primary" {
  name       = "mavoyan-cp-cluster"
  location   = var.region
  network = "default"

#   private_cluster_config {
#     enable_private_nodes    = true
#     enable_private_endpoint = true
#     # master_ipv4_cidr_block  = "172.16.0.16/28"
#   }
    # ip_allocation_policy {
    #     stack_type                    = "IPV4_IPV6"
    #     services_secondary_range_name = google_compute_subnetwork.default.secondary_ip_range[0].range_name
    #     cluster_secondary_range_name  = google_compute_subnetwork.default.secondary_ip_range[1].range_name
    #   }
  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection      = false
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "mavoyan-cp-node-pool"
  location   = var.region
  project    = var.project_id
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  node_config {
    machine_type    = "e2-medium"
  }
}