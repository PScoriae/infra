<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the parameter. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The type of the parameter. Valid types are String, StringList, and SecureString. | `string` | `"SecureString"` | no |
| <a name="input_value"></a> [value](#input\_value) | The value of the parameter. | `string` | `"dummy"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->