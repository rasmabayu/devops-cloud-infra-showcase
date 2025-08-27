terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_container_cluster" "gke" {
  name               = "devops-portfolio-gke"
  location           = var.region
  remove_default_node_pool = true
  initial_node_count = 1

  networking_mode    = "VPC_NATIVE"
  ip_allocation_policy {}
  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "primary" {
  name       = "default-pool"
  location   = var.region
  cluster    = google_container_cluster.gke.name
  node_count = 2

  node_config {
    machine_type = "e2-standard-2"
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    labels = { env = "dev" }
    metadata = { disable-legacy-endpoints = "true" }
  }
}
