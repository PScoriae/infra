terraform {
  backend "s3" {
    bucket       = "pscoriae-tf-state-s3"
    key          = "aws/ap-southeast-1/iam/terraform.tfstate"
    region       = "ap-southeast-1"
    profile      = "PScoriae"
    use_lockfile = true
    encrypt      = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "PScoriae"
  region  = "ap-southeast-1"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = "Production"
    }
  }
}