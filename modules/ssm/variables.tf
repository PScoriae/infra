variable "name" {
  description = "The name of the parameter."
  type        = string
}

variable "type" {
  description = "The type of the parameter. Valid types are String, StringList, and SecureString."
  type        = string
  validation {
    condition     = contains(["String", "StringList", "SecureString"], var.type)
    error_message = "Invalid type. Valid types are String, StringList, and SecureString."
  }
  default = "SecureString"
}

variable "value" {
  description = "The value of the parameter."
  type        = string
  default     = "dummy"
}
