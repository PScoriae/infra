module "carthingy_root_email" {
  source      = "../../../../modules/ssm"
  name        = "/organizations/carthingy/root_email"
  description = "Root user email of the CarThingy AWS account"
}
