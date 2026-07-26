terraform {
  backend "s3" {
    bucket       = "pscoriae-tf-state-s3"
    key          = "cloudflare/terraform.tfstate"
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
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  profile = "PScoriae"
  region  = "ap-southeast-1"
}

provider "cloudflare" {
  api_token = data.aws_ssm_parameter.cf_api_token.value
}