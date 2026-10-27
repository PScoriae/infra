module "cf_zone_id_pcc" {
  source      = "../../../../../modules/ssm"
  name        = "/cloudflare/pcc/zone_id"
  description = "Cloudflare Zone ID for pierreccesario.com"
}

# Adopt from the old aws/ap-southeast-1/ssm state; safe to delete after the first apply.
import {
  to = module.cf_zone_id_pcc.aws_ssm_parameter.this
  id = "/cloudflare/pcc/zone_id"
}
