variable "name" {
  description = "The name of the member account."
  type        = string
}

variable "email" {
  description = "The root user email of the account. Must not be used by any other AWS account."
  type        = string
}
