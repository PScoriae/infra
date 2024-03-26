locals {
  bucket_arns = compact([
    aws_s3_bucket.static_site.arn,
    var.site_redirect_from != null ? aws_s3_bucket.redirect[0].arn : null,
  ])
  bucket_ids = compact([
    aws_s3_bucket.static_site.id,
    var.site_redirect_from != null ? aws_s3_bucket.redirect[0].id : null,
  ])
}

data "aws_iam_policy_document" "s3_public_site" {
  for_each = toset(local.bucket_arns)
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

data "aws_iam_policy_document" "manage_s3" {
  for_each = toset(local.bucket_ids)
  statement {
    sid    = "allowReadWriteS3"
    effect = "Allow"
    actions = [
      "s3:ListBucket",
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]
    resources = ["arn:aws:s3:::${each.value}/*"]
  }
}

resource "aws_iam_policy" "rw_s3" {
  name   = "s3-${aws_s3_bucket.static_site.id}-rw"
  policy = data.aws_iam_policy_document.manage_s3["${aws_s3_bucket.static_site.id}"].json
}
