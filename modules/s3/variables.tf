variable "name" {
  description = "The name of the S3 bucket."
  type        = string
}

variable "public_access_block" {
  description = "Whether to block public access to the bucket."
  type        = bool
  default     = true
}

variable "versioning_enabled" {
  description = "Whether to enable versioning on the bucket."
  type        = bool
  default     = false
}
