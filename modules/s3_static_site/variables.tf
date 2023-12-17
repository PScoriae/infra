variable "cname_record" {
  description = "Full name of the CNAME record to be used"
  type        = string
}

variable "s3_bucket_policy" {
  description = "Relative path to the S3 bucket policy"
  type        = string
}

variable "index" {
  description = "path for index.html"
  type        = string
  default     = "index.html"
}

variable "error" {
  description = "path for error.html"
  type        = string
  default     = "error.html"
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone id"
  type        = string
}

variable "site_redirect" {
  description = "If provided, create another CNAME record and S3 bucket for redirection to main bucket, typically for www subdomain"
  type = object({
    cname_record     = string
    s3_bucket_policy = string
  })
  default = {
    cname_record     = ""
    s3_bucket_policy = ""
  }
}
