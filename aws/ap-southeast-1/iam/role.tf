data "aws_iam_policy" "admin" {
  name = "AdministratorAccess"
}

resource "aws_iam_role_policy_attachment" "github_readonly_infra" {
  role       = aws_iam_role.gha_infra.name
  policy_arn = data.aws_iam_policy.admin.arn
}

resource "aws_iam_role" "gha_infra" {
  name               = "gha-admin-infra"
  assume_role_policy = data.aws_iam_policy_document.gha_assume_role_infra.json
  description        = "Allow GitHub Actions manage infra resources"
}

# Moved to services/pierreccesario.com/aws/ap-southeast-1/iam; safe to delete after the first apply.
removed {
  from = aws_iam_role.github_manage_s3_pcc
  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_iam_role_policy_attachment.github_manage_s3_pcc
  lifecycle {
    destroy = false
  }
}
