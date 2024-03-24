resource "aws_s3_bucket" "tfstate" {
  bucket = "pscoriae-tf-state-s3"
}

resource "aws_s3_bucket" "shuttleday-payments" {
  bucket = "shuttleday-payments"
}
resource "aws_s3_bucket" "shuttleday-payments-staging" {
  bucket = "shuttleday-payments-staging"
}
