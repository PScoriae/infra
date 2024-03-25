locals {
  buckets = compact([
    aws_s3_bucket.static_site.arn,
    var.site_redirect_from != null ? aws_s3_bucket.redirect[0].arn : null,
  ])
}
data "aws_iam_policy_document" "this" {
  for_each = toset(local.buckets)
  statement {
    sid = "PublicReadGetObject"
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
    ]

    resources = [
      "${each.value}/*",
    ]
  }
}
