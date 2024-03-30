resource "aws_s3_bucket" "redirect" {
  count  = var.site_redirect_from != null ? 1 : 0
  bucket = var.site_redirect_from
}

resource "aws_s3_bucket_policy" "redirect" {
  count  = var.site_redirect_from != null ? 1 : 0
  bucket = aws_s3_bucket.redirect[0].id
  policy = data.aws_iam_policy_document.s3_public_site["arn:aws:s3:::${var.site_redirect_from}"].json
}

resource "aws_s3_bucket_website_configuration" "redirect" {
  count  = var.site_redirect_from != null ? 1 : 0
  bucket = aws_s3_bucket.redirect[0].id

  redirect_all_requests_to {
    host_name = aws_s3_bucket.static_site.bucket
  }
}

resource "cloudflare_record" "redirect" {
  count   = var.site_redirect_from != null ? 1 : 0
  zone_id = var.cloudflare_zone_id
  name    = var.site_redirect_from
  value   = aws_s3_bucket_website_configuration.redirect[0].website_endpoint
  type    = "CNAME"
  proxied = true
}
