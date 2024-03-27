variable "name" {
  description = "The name of the repository"
  type        = string
}

variable "description" {
  description = "The description of the repository"
  type        = string
  default     = null
}

variable "has_downloads" {
  description = "Set to true to enable downloads for this repository"
  type        = bool
  default     = false
}

variable "has_issues" {
  description = "Set to true to enable issues for this repository"
  type        = bool
  default     = false
}

variable "has_projects" {
  description = "Set to true to enable projects for this repository"
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to true to enable the wiki for this repository"
  type        = bool
  default     = false
}

variable "visibility" {
  description = "The visibility of the repository"
  type        = string
  default     = "public"
}

variable "topics" {
  description = "A list of topics for the repository"
  type        = list(string)
  default     = null
}

variable "archived" {
  description = "Set to true to archive the repository"
  type        = bool
  default     = false
}
