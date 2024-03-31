module "icloud_dkim" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/icloud/dkim"
  description = "iCloud DKIM"
}

module "icloud_mx01" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/icloud/mx01"
  description = "iCloud MX01"
}

module "icloud_mx02" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/icloud/mx02"
  description = "iCloud MX02"
}

module "icloud_spf" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/icloud/spf"
  description = "iCloud SPF"
}

module "icloud_txt" {
  source      = "../../../modules/ssm"
  name        = "/cloudflare/icloud/txt"
  description = "iCloud TXT for identification"
}
