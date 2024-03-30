resource "aws_s3_bucket" "static_site" {
  bucket = var.cname_record
}

resource "aws_s3_bucket_policy" "static_site" {
  bucket = aws_s3_bucket.static_site.id
  policy = data.aws_iam_policy_document.s3_public_site["arn:aws:s3:::${var.cname_record}"].json
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

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = ""
    }
  }
}

resource "cloudflare_record" "static_site" {
  zone_id = var.cloudflare_zone_id
  name    = var.cname_record
  value   = aws_s3_bucket_website_configuration.static_site.website_endpoint
  type    = "CNAME"
  proxied = true
}
