variable "cname_record" {
  description = "Full name of the CNAME record to be used"
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

variable "site_redirect_from" {
  description = "If provided, create another CNAME record and S3 bucket for redirection to main bucket, typically for www subdomain. Expects a CNAME record."
  type        = string
  default     = null
}
