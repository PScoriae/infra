variable "name" {
  description = "Name of the Cloudflare record"
  type        = string
  default     = "pierreccesario.com"
}

variable "value" {
  description = "Value of the Cloudflare record"
  type        = string
}

variable "ttl" {
  description = "TTL of the Cloudflare record. Defaults to 1 hour"
  type        = number
  default     = 3600
}

variable "type" {
  description = "Type of the Cloudflare record"
  type        = string
}

variable "proxied" {
  description = "Whether the record is proxied by Cloudflare"
  type        = bool
  default     = false
}

variable "comment" {
  description = "Comment for the Cloudflare record"
  type        = string
  default     = "Managed by Terraform"
}

variable "priority" {
  description = "Priority of the Cloudflare record"
  type        = number
  default     = null
}
