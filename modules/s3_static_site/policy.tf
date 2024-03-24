data "aws_iam_policy_document" "static_site" {
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
      "${aws_s3_bucket.static_site.arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "redirect" {
  count = var.site_redirect_from != null ? 1 : 0
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
      "${aws_s3_bucket.redirect[0].arn}/*",
    ]
  }
}
