module "tfstate" {
  source             = "../../../modules/s3"
  name               = "pscoriae-tf-state-s3"
  versioning_enabled = true
}
