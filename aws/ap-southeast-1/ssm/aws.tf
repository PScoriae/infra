module "account_id" {
  source      = "../../../modules/ssm"
  name        = "/account_id"
  description = "AWS Account ID for PScoriae"
}
