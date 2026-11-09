resource "aws_organizations_account" "this" {
  name  = var.name
  email = var.email

  # Removing an account from the organization needs manual steps and can orphan everything in it.
  lifecycle {
    prevent_destroy = true
  }
}
