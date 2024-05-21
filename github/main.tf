terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "pscoriae-tf-state-s3"
    key            = "github/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "github" {
  owner = "PScoriae"
}
