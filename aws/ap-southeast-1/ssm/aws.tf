module "account_id" {
  source      = "../../../modules/ssm"
  name        = "/aws_account_id"
  description = "AWS Account ID for PScoriae"
}
