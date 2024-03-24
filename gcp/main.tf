terraform {
  backend "s3" {
    bucket         = "pscoriae-tf-state-s3"
    key            = "gcp/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "google" {
  project = "pierreccesario"
  region  = "us-central1"
  zone    = "us-central1-a"
}
