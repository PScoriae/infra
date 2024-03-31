variable "name" {
  description = "The name of the parameter."
  type        = string
}

variable "description" {
  description = "The description of the parameter."
  type        = string
  default     = null
}

variable "type" {
  description = "The type of the parameter. Valid types are String, StringList, and SecureString."
  type        = string
  default     = "SecureString"
}

variable "value" {
  description = "The value of the parameter."
  type        = string
  default     = "dummy"
}
