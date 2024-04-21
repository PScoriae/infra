resource "aws_s3_bucket" "this" {
  bucket = var.name
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = var.public_access_block
  block_public_policy     = var.public_access_block
  ignore_public_acls      = var.public_access_block
  restrict_public_buckets = var.public_access_block
}

resource "aws_s3_bucket_policy" "public" {
  count  = var.public_access_block ? 0 : 1
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.public.json
}
