module "cf_api_token" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/api_token"
  description = "Cloudflare API Token"
}

module "cf_zone_id_pcc" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/pcc/zone_id"
  description = "Cloudflare Zone ID for pierreccesario.com"
}

module "cf_account_id" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/account_id"
  description = "Cloudflare Account ID"
}

module "cf_cipherline_deploy_token" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/cipherline/deploy_token"
  description = "Cloudflare API Token scoped to deploy the Cipherline Worker (Workers Scripts: Edit)"
}
