resource "google_container_cluster" "primary" {
  depends_on = [var.network]
  name       = "mavoyan-cp-cluster"
  location   = var.region

  network    = var.network
  subnetwork = var.subnetwork


  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = "172.16.0.16/28"
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "172.16.0.16/28"
      display_name = "Office Network"
    }
  }

  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }

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
    service_account = var.sa_email
  }
}