data "aws_iam_policy" "s3_pcc_rw" {
  name = "s3-pierreccesario.com-rw"
}

resource "aws_iam_role_policy_attachment" "github_manage_s3_pcc" {
  role       = aws_iam_role.github_manage_s3_pcc.name
  policy_arn = data.aws_iam_policy.s3_pcc_rw.arn
}

resource "aws_iam_role" "github_manage_s3_pcc" {
  name               = "github-manage-s3-pierreccesario"
  assume_role_policy = data.aws_iam_policy_document.gha_assume_role_rw_s3_pcc.json
  description        = "Allow GitHub Actions to manage S3 bucket for pierreccesario.com"
}

# Adopt from the old aws/ap-southeast-1/iam state; safe to delete after the first apply.
import {
  to = aws_iam_role.github_manage_s3_pcc
  id = "github-manage-s3-pierreccesario"
}

import {
  to = aws_iam_role_policy_attachment.github_manage_s3_pcc
  id = "github-manage-s3-pierreccesario/${data.aws_iam_policy.s3_pcc_rw.arn}"
}
