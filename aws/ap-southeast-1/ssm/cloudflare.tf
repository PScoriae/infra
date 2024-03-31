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
