module "pcc_images" {
  source              = "../../../../../modules/s3"
  name                = "pierreccesario.com-images"
  public_access_block = false
}
