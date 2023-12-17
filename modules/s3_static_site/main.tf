# Creates an S3 bucket with public access for a static website.
# Also creates an accompanying Cloudflare CNAME DNS record.
# Has conditional site_redirect variable that creates one redirect CNAME record and bucket

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

## ---------------------------------------------------------------------------------------------------------------------
## MAIN BUCKET
## Standard Cloudflare and S3 resources for a static site
## ---------------------------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "static_site" {
  bucket = var.cname_record
}

resource "aws_s3_bucket_policy" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  policy = file(var.s3_bucket_policy)
}

resource "aws_s3_bucket_acl" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "static_site" {
  bucket = aws_s3_bucket.static_site.id

  index_document {
    suffix = var.index
  }

  error_document {
    key = var.error
  }

  routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": ""
    }
}]
EOF
}

resource "cloudflare_record" "static_site" {
  zone_id = var.cloudflare_zone_id
  name    = var.cname_record
  value   = aws_s3_bucket_website_configuration.static_site.website_endpoint
  type    = "CNAME"
  proxied = true
}

## ---------------------------------------------------------------------------------------------------------------------
## OPTIONAL REDIRECT BUCKET
## Creates necessary resources for a site redirect if defined through site_redirect
## ---------------------------------------------------------------------------------------------------------------------
resource "aws_s3_bucket" "redirect" {
  count  = var.site_redirect != { cname_record = "", s3_bucket_policy = "" } ? 1 : 0
  bucket = var.site_redirect.cname_record
}

resource "aws_s3_bucket_policy" "redirect" {
  count  = var.site_redirect != { cname_record = "", s3_bucket_policy = "" } ? 1 : 0
  bucket = aws_s3_bucket.redirect[0].id
  policy = file(var.site_redirect.s3_bucket_policy)
}

resource "aws_s3_bucket_acl" "www_shuttleday_bucket_acl" {
  count  = var.site_redirect != { cname_record = "", s3_bucket_policy = "" } ? 1 : 0
  bucket = aws_s3_bucket.redirect[0].id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "redirect" {
  count  = var.site_redirect != { cname_record = "", s3_bucket_policy = "" } ? 1 : 0
  bucket = aws_s3_bucket.redirect[0].id

  redirect_all_requests_to {
    host_name = aws_s3_bucket.static_site.bucket
  }
}
resource "cloudflare_record" "redirect" {
  count   = var.site_redirect != { cname_record = "", s3_bucket_policy = "" } ? 1 : 0
  zone_id = var.cloudflare_zone_id
  name    = var.site_redirect.cname_record
  value   = aws_s3_bucket_website_configuration.redirect[0].website_endpoint
  type    = "CNAME"
  proxied = true
}
