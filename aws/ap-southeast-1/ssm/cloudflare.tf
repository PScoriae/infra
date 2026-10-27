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

# Moved to services/*/aws/ap-southeast-1/ssm; safe to delete after the first apply.
removed {
  from = module.cf_zone_id_pcc
  lifecycle {
    destroy = false
  }
}

removed {
  from = module.cf_cipherline_deploy_token
  lifecycle {
    destroy = false
  }
}
