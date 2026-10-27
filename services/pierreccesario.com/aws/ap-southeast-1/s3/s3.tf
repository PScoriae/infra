module "pcc_images" {
  source              = "../../../../../modules/s3"
  name                = "pierreccesario.com-images"
  public_access_block = false
}

# Adopt from the old aws/ap-southeast-1/s3 state; safe to delete after the first apply.
import {
  to = module.pcc_images.aws_s3_bucket.this
  id = "pierreccesario.com-images"
}

import {
  to = module.pcc_images.aws_s3_bucket_versioning.this
  id = "pierreccesario.com-images"
}

import {
  to = module.pcc_images.aws_s3_bucket_public_access_block.this
  id = "pierreccesario.com-images"
}

import {
  to = module.pcc_images.aws_s3_bucket_policy.public[0]
  id = "pierreccesario.com-images"
}
