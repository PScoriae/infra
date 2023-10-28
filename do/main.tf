terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

## ---------------------------------------------------------------------------------------------------------------------
## Set up DigitalOcean cluster
## ---------------------------------------------------------------------------------------------------------------------
data "digitalocean_kubernetes_versions" "default" {
  version_prefix = "1.26."
}
