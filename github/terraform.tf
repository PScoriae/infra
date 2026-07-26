terraform {
  backend "s3" {
    bucket       = "pscoriae-tf-state-s3"
    key          = "github/terraform.tfstate"
    region       = "ap-southeast-1"
    profile      = "PScoriae"
    use_lockfile = true
    encrypt      = true
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = "PScoriae"
}