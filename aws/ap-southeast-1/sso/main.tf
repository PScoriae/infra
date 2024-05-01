terraform {
  backend "s3" {
    bucket         = "pscoriae-tf-state-s3"
    key            = "aws/ap-southeast-1/sso/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
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
