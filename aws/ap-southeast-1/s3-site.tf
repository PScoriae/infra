module "pcc" {
  source = "../../modules/s3_static_site"

  cloudflare_zone_id = data.aws_ssm_parameter.cf_zone_id_pcc.value
  s3_bucket_policy   = "../s3-policies/pcc-policy.json"
  cname_record       = "pierreccesario.com"
  site_redirect = {
    cname_record     = "www.pierreccesario.com"
    s3_bucket_policy = "../s3-policies/www-pcc-policy.json"
  }
}

module "music_pcc" {
  source = "../../modules/s3_static_site"

  cloudflare_zone_id = data.aws_ssm_parameter.cf_zone_id_pcc.value
  s3_bucket_policy   = "../s3-policies/music-pcc-policy.json"
  cname_record       = "music.pierreccesario.com"
}
