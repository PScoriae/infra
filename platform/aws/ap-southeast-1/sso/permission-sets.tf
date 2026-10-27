resource "aws_ssoadmin_permission_set" "admin" {
  name             = "AdministratorAccess"
  description      = "POWAAAAAAH!"
  instance_arn     = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  relay_state      = "https://ap-southeast-1.console.aws.amazon.com/console/home?region=ap-southeast-1#" # redirect to the console home
  session_duration = "PT8H"                                                                              # 8 hours
}

resource "aws_ssoadmin_managed_policy_attachment" "admin" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
}
