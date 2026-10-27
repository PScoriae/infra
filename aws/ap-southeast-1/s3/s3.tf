module "tfstate" {
  source             = "../../../modules/s3"
  name               = "pscoriae-tf-state-s3"
  versioning_enabled = true
}

# Moved to services/pierreccesario.com/aws/ap-southeast-1/s3; safe to delete after the first apply.
removed {
  from = module.pcc_images
  lifecycle {
    destroy = false
  }
}
