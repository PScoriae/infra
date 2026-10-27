module "cf_cipherline_deploy_token" {
  source      = "../../../../../modules/ssm"
  name        = "/cloudflare/cipherline/deploy_token"
  description = "Cloudflare API Token scoped to deploy the Cipherline Worker (Workers Scripts: Edit)"
}

# Adopt from the old aws/ap-southeast-1/ssm state; safe to delete after the first apply.
import {
  to = module.cf_cipherline_deploy_token.aws_ssm_parameter.this
  id = "/cloudflare/cipherline/deploy_token"
}
