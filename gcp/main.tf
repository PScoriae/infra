terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.62.1"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = var.default_gcp_region
  zone    = var.default_gcp_zone
}

# resource "google_compute_address" "us_public_ip" {
#   region = "us-west1"
#   name   = "us-public-ip"
# }

# resource "google_compute_address" "sg_public_ip" {
#   region = "asia-southeast1"
#   name   = "sg-public-ip"
# }

# resource "google_compute_instance" "k8s_control_plane1" {
#   name         = "k8s-control-plane1"
#   machine_type = var.k8s_machine_type

#   boot_disk {
#     initialize_params {
#       image = "ubuntu-os-cloud/ubuntu-2204-lts-arm64"
#     }
#   }

#   network_interface {
#     network    = "default"
#     network_ip = "10.128.0.10"
#     access_config {
#       nat_ip = google_compute_address.us_public_ip.address
#     }
#   }
# }

# resource "google_compute_instance" "k8s_worker1" {
#   name         = "k8s-worker1"
#   machine_type = var.k8s_machine_type

#   boot_disk {
#     initialize_params {
#       image = "ubuntu-os-cloud/ubuntu-2204-lts-arm64"
#     }
#   }

#   network_interface {
#     network    = "default"
#     network_ip = "10.128.0.20"
#     access_config {
#     }
#   }
# }

# resource "google_compute_instance" "bastion_host" {
#   name         = "bastion-host"
#   machine_type = var.bastion_machine_type
#   zone         = "us-west1-b"

#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-11"
#     }
#   }

#   network_interface {
#     network    = "default"
#     network_ip = "10.138.0.10"
#     access_config {
#       nat_ip = google_compute_address.us_public_ip.address
#     }
#   }
# }
