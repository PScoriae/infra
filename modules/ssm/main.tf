resource "aws_ssm_parameter" "this" {
  name  = var.name
  type  = var.type
  value = var.value
  lifecycle {
    ignore_changes = [value]
  }
}
