resource "google_artifact_registry_repository" "spring_repository" {
  location      = var.region
  project       = var.project_id
  repository_id = "mavoyan-spring-petclinic-repository"
  description   = "Docker repository for images"
  format        = "DOCKER"

  docker_config {
    immutable_tags = true
  }
}