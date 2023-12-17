terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

## ---------------------------------------------------------------------------------------------------------------------
## CREATE A RECORDS
## Create Cloudflare A records that redirect to AWS EIP
## ---------------------------------------------------------------------------------------------------------------------
resource "cloudflare_record" "a" {
  for_each = toset(var.subdomains)
  zone_id  = var.cloudflare_zone_id
  name     = each.key
  value    = var.aws_public_eip
  type     = "A"
  proxied  = true
}
