data "aws_ssm_parameter" "cf_zone_id_pcc" {
  name = "/cloudflare/pcc/zone_id"
}
