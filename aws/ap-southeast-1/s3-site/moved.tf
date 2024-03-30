moved {
  from = module.pcc.aws_s3_bucket.redirect[0]
  to   = module.pcc.aws_s3_bucket.static_site["www.pierreccesario.com"]
}

moved {
  from = module.pcc.aws_s3_bucket.static_site
  to   = module.pcc.aws_s3_bucket.static_site["pierreccesario.com"]
}

moved {
  from = module.pcc.aws_s3_bucket_policy.redirect[0]
  to   = module.pcc.aws_s3_bucket_policy.static_site["www.pierreccesario.com"]
}

moved {
  from = module.pcc.aws_s3_bucket_policy.static_site
  to   = module.pcc.aws_s3_bucket_policy.static_site["pierreccesario.com"]
}

moved {
  from = module.pcc.aws_s3_bucket_website_configuration.redirect[0]
  to   = module.pcc.aws_s3_bucket_website_configuration.static_site["www.pierreccesario.com"]
}

moved {
  from = module.pcc.aws_s3_bucket_website_configuration.static_site
  to   = module.pcc.aws_s3_bucket_website_configuration.static_site["pierreccesario.com"]
}

moved {
  from = module.pcc.cloudflare_record.redirect[0]
  to   = module.pcc.cloudflare_record.static_site["www.pierreccesario.com"]
}

moved {
  from = module.pcc.cloudflare_record.static_site
  to   = module.pcc.cloudflare_record.static_site["pierreccesario.com"]
}
