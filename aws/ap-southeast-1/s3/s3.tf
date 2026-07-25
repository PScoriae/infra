module "tfstate" {
  source             = "../../../modules/s3"
  name               = "pscoriae-tf-state-s3"
  versioning_enabled = true
}

module "pcc_images" {
  source              = "../../../modules/s3"
  name                = "pierreccesario.com-images"
  public_access_block = false
}
