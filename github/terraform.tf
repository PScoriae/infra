terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "pscoriae-tf-state-s3"
    key            = "github/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
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