terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "pscoriae-tf-state-s3"
    key            = "aws/ap-southeast-1/network/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Environment = "Production"
    }
  }
}