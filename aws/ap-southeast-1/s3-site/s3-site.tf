module "pcc" {
  source = "../../../modules/s3_static_site"

  cloudflare_zone_id = data.aws_ssm_parameter.cf_zone_id_pcc.value
  cname_record       = "pierreccesario.com"
  site_redirect_from = "www.pierreccesario.com"
}
