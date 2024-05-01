data "aws_ssoadmin_instances" "this" {}

data "aws_ssm_parameter" "account_id" {
  name = "/account_id"
}
