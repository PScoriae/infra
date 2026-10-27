data "aws_ssm_parameter" "cf_account_id" {
  name = "/cloudflare/account_id"
}

data "aws_ssm_parameter" "cf_cipherline_deploy_token" {
  name = "/cloudflare/cipherline/deploy_token"
}

resource "github_actions_secret" "cipherline_cf_account_id" {
  repository      = module.cipherline.name
  secret_name     = "CLOUDFLARE_ACCOUNT_ID"
  plaintext_value = data.aws_ssm_parameter.cf_account_id.value
}

resource "github_actions_secret" "cipherline_cf_api_token" {
  repository      = module.cipherline.name
  secret_name     = "CLOUDFLARE_API_TOKEN"
  plaintext_value = data.aws_ssm_parameter.cf_cipherline_deploy_token.value
}
