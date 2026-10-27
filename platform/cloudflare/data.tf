data "aws_ssm_parameter" "cf_api_token" {
  name = "/cloudflare/api_token"
}

data "aws_ssm_parameter" "cf_zone_id_pcc" {
  name = "/cloudflare/pcc/zone_id"
}

data "aws_ssm_parameter" "icloud_dkim" {
  name = "/cloudflare/icloud/dkim"
}

data "aws_ssm_parameter" "icloud_mx01" {
  name = "/cloudflare/icloud/mx01"
}

data "aws_ssm_parameter" "icloud_mx02" {
  name = "/cloudflare/icloud/mx02"
}

data "aws_ssm_parameter" "icloud_spf" {
  name = "/cloudflare/icloud/spf"
}

data "aws_ssm_parameter" "icloud_txt" {
  name = "/cloudflare/icloud/txt"
}
