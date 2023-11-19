terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.6.0"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.default_gcp_region
  zone    = var.default_gcp_zone
}

resource "google_compute_instance" "bastion_host" {
  name         = "bastion-host"
  machine_type = var.bastion_machine_type
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      type  = "pd-standard"
      image = "debian-cloud/debian-12"
      size  = 10
    }
  }

  network_interface {
    network    = "default"
    network_ip = "10.128.0.10"
  }
}
