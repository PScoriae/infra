locals {
  domains = compact([var.cname_record, var.site_redirect_from])
}

resource "aws_s3_bucket" "static_site" {
  for_each = toset(local.domains)
  bucket   = each.value
}

resource "aws_s3_bucket_policy" "static_site" {
  for_each = toset(local.domains)
  bucket   = aws_s3_bucket.static_site[each.value].id
  policy   = data.aws_iam_policy_document.s3_public_site["${each.value}"].json
}

resource "aws_s3_bucket_acl" "static_site" {
  bucket = aws_s3_bucket.static_site[var.cname_record].id
  acl    = "public-read"
}

resource "aws_s3_bucket_website_configuration" "static_site" {
  for_each = toset(local.domains)
  bucket   = aws_s3_bucket.static_site["${each.value}"].id

  dynamic "index_document" {
    for_each = each.value == var.cname_record ? [0] : []
    content {
      suffix = var.index
    }
  }

  dynamic "error_document" {
    for_each = each.value == var.cname_record ? [0] : []
    content {
      key = var.error
    }
  }

  dynamic "redirect_all_requests_to" {
    for_each = each.value == var.site_redirect_from ? [0] : []
    content {
      host_name = aws_s3_bucket.static_site[var.cname_record].bucket
    }
  }
}

resource "cloudflare_record" "static_site" {
  for_each = toset(local.domains)
  zone_id  = var.cloudflare_zone_id
  name     = each.value
  value    = aws_s3_bucket_website_configuration.static_site["${each.value}"].website_endpoint
  type     = "CNAME"
  proxied  = true
  comment  = "Managed by Terraform"
}
