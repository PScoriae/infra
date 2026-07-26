terraform {
  backend "s3" {
    bucket       = "pscoriae-tf-state-s3"
    key          = "gcp/terraform.tfstate"
    region       = "ap-southeast-1"
    profile      = "PScoriae"
    use_lockfile = true
    encrypt      = true
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = "pierreccesario"
  region  = "us-central1"
  zone    = "us-central1-a"
}