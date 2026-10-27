module "cf_api_token" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/api_token"
  description = "Cloudflare API Token"
}

module "cf_account_id" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/account_id"
  description = "Cloudflare Account ID"
}
