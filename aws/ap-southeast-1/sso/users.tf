resource "aws_identitystore_user" "pierre_cesario" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]

  display_name = "Pierre Cesario"
  user_name    = "PierreCesario"

  name {
    given_name  = "Pierre"
    family_name = "Cesario"
  }

  emails {
    primary = true
    value   = "contact@pierreccesario.com"
    type    = "work"
  }
}

resource "aws_identitystore_group_membership" "pierre_cesario" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]
  group_id          = aws_identitystore_group.admin.group_id
  member_id         = aws_identitystore_user.pierre_cesario.user_id
}
