module "icloud_dkim" {
  source = "../modules/cloudflare_record"

  name    = "sig1._domainkey"
  content = data.aws_ssm_parameter.icloud_dkim.value
  type    = "CNAME"
}

module "icloud_mx01" {
  source = "../modules/cloudflare_record"

  content  = data.aws_ssm_parameter.icloud_mx01.value
  type     = "MX"
  priority = 10
}

module "icloud_mx02" {
  source = "../modules/cloudflare_record"

  content  = data.aws_ssm_parameter.icloud_mx02.value
  type     = "MX"
  priority = 10
}

module "icloud_spf" {
  source = "../modules/cloudflare_record"

  content = data.aws_ssm_parameter.icloud_spf.value
  type    = "TXT"
}

module "icloud_txt" {
  source = "../modules/cloudflare_record"

  content = data.aws_ssm_parameter.icloud_txt.value
  type    = "TXT"
}
