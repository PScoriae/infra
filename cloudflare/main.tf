terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "pscoriae-tf-state-s3"
    key            = "cloudflare/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-lock"
  }
}

provider "aws" {
  region  = "ap-southeast-1"
  profile = "PScoriae"
}

provider "cloudflare" {
  api_token = data.aws_ssm_parameter.cf_api_token.value
}
