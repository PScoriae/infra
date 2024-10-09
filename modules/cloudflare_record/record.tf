resource "cloudflare_record" "this" {
  zone_id  = data.aws_ssm_parameter.cf_zone_id_pcc.value
  name     = var.name
  content  = var.content
  type     = var.type
  ttl      = var.ttl
  proxied  = var.proxied
  comment  = var.comment
  priority = var.priority
}
