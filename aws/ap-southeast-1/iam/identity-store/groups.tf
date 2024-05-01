resource "aws_identitystore_group" "admin" {
  display_name      = "Admin"
  description       = "You can pretty much do everything"
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]
}

resource "aws_ssoadmin_account_assignment" "admin" {
  instance_arn       = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn

  principal_id   = aws_identitystore_group.admin.group_id
  principal_type = "GROUP"

  target_id   = data.aws_ssm_parameter.account_id.value
  target_type = "AWS_ACCOUNT"
}
