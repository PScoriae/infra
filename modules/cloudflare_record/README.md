<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [aws_ssm_parameter.cf_zone_id_pcc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Comment for the Cloudflare record | `string` | `"Managed by Terraform"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the Cloudflare record | `string` | `"pierreccesario.com"` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | Priority of the Cloudflare record | `number` | `null` | no |
| <a name="input_proxied"></a> [proxied](#input\_proxied) | Whether the record is proxied by Cloudflare | `bool` | `false` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | TTL of the Cloudflare record. Defaults to 1 hour | `number` | `3600` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the Cloudflare record | `string` | n/a | yes |
| <a name="input_value"></a> [value](#input\_value) | Value of the Cloudflare record | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->