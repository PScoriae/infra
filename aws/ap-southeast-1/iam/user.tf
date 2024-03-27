resource "aws_iam_user" "terraform_admin" {
  name = "terraform-admin"
}

resource "aws_iam_user_policy_attachment" "terraform_admin" {
  user       = aws_iam_user.terraform_admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
