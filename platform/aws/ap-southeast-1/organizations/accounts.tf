module "carthingy" {
  source = "../../../../modules/aws_account"
  name   = "CarThingy"
  email  = data.aws_ssm_parameter.carthingy_root_email.value
}

output "carthingy_account_id" {
  description = "The ID of the CarThingy account"
  value       = module.carthingy.id
}
