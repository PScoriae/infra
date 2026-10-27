module "cf_cipherline_deploy_token" {
  source      = "../../../../../modules/ssm"
  name        = "/cloudflare/cipherline/deploy_token"
  description = "Cloudflare API Token scoped to deploy the Cipherline Worker (Workers Scripts: Edit)"
}
