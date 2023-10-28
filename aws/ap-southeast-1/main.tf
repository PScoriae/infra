## ---------------------------------------------------------------------------------------------------------------------
## TERRAFORM SETUP
## Set AWS region and Cloudflare account API token
## ---------------------------------------------------------------------------------------------------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

## ---------------------------------------------------------------------------------------------------------------------
## S3 BUCKET STATIC SITES
## Use local s3-static-site module to set up resources for static sites
## ---------------------------------------------------------------------------------------------------------------------
module "pcc" {
  source = "../../modules/s3_static_site"

  cloudflare_zone_id = var.pcc_cloudflare_zone_id
  s3_bucket_policy   = "../s3-policies/pcc-policy.json"
  cname_record       = "pierreccesario.com"
  index              = "index.html"
  error              = "error.html"
  site_redirect = {
    cname_record     = "www.pierreccesario.com"
    s3_bucket_policy = "../s3-policies/www-pcc-policy.json"
  }
}
module "music_pcc" {
  source = "../../modules/s3_static_site"

  cloudflare_zone_id = var.pcc_cloudflare_zone_id
  s3_bucket_policy   = "../s3-policies/music-pcc-policy.json"
  cname_record       = "music.pierreccesario.com"
  index              = "index.html"
  error              = "error.html"
}

## ---------------------------------------------------------------------------------------------------------------------
## CLOUDFLARE A RECORDS
## Bind A record subdomains to AWS EIP for services 
## ---------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------
## SERVER INFRASTRUCTURE
## ---------------------------------------------------------------------------------------------------------------------
## Set up EC2 instances
## ---------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------
## Set up networking
## ---------------------------------------------------------------------------------------------------------------------
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "main"
  }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}

resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.main.id
  }

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet-1"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.main.id
}

## ---------------------------------------------------------------------------------------------------------------------
## Define AWS Security Groups
## ---------------------------------------------------------------------------------------------------------------------
module "aws_security_group" {
  source = "../../modules/aws_security_groups"

  vpc_id = aws_vpc.main.id
}

## ---------------------------------------------------------------------------------------------------------------------
## Create NICs for EC2 instances
## ---------------------------------------------------------------------------------------------------------------------
resource "aws_network_interface" "t3a_small" {
  subnet_id   = aws_subnet.subnet_1.id
  private_ips = ["10.0.1.60"]
  security_groups = [
    module.aws_security_group.allow_ssh_id,
    module.aws_security_group.allow_web_id
  ]
}

## ---------------------------------------------------------------------------------------------------------------------
## Create EIPs for EC2 instances
## ---------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------
## REMOTE TF STATE
## Create S3 and DynamoDB resources to store remote Terraform state
## ---------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------
## MISCELLANEOUS
## ---------------------------------------------------------------------------------------------------------------------
## Create Shuttleday Payments S3 Bucket
## ---------------------------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "shuttleday-payments" {
  bucket = "shuttleday-payments"
}
resource "aws_s3_bucket" "shuttleday-payments-staging" {
  bucket = "shuttleday-payments-staging"
}
