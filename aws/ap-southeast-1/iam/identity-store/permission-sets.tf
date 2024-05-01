resource "aws_ssoadmin_permission_set" "admin" {
  name             = "AdministratorAccess"
  description      = "POWAAAAAAH!"
  instance_arn     = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  relay_state      = "https://s3.console.aws.amazon.com/s3/home?region=us-east-1#"
  session_duration = "PT8H" # 8 hours
}

resource "aws_ssoadmin_managed_policy_attachment" "admin" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
}
