terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "pscoriae-tf-state-s3"
    key            = "aws/ap-southeast-1/dynamodb/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  default_tags {
    tags = {
      Environment = "Production"
      ManagedBy   = "Terraform"
    }
  }
}
