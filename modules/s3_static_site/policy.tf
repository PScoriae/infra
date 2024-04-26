data "aws_iam_policy_document" "s3_public_site" {
  for_each = toset(local.domains)
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
      "${aws_s3_bucket.static_site[each.value].arn}/*",
    ]
  }
}

data "aws_iam_policy_document" "manage_s3" {
  for_each = toset(local.domains)
  statement {
    sid    = "AllowReadWriteS3"
    effect = "Allow"
    actions = [
      "s3:ListBucket",
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]
    resources = ["${aws_s3_bucket.static_site[each.value].arn}/*"]
  }
}

resource "aws_iam_policy" "rw_s3" {
  name   = "s3-${aws_s3_bucket.static_site[var.cname_record].id}-rw"
  policy = data.aws_iam_policy_document.manage_s3["${aws_s3_bucket.static_site[var.cname_record].id}"].json
}
