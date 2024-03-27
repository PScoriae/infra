resource "github_repository" "this" {
  name          = var.name
  description   = var.description
  has_downloads = var.has_downloads
  has_issues    = var.has_issues
  has_projects  = var.has_projects
  has_wiki      = var.has_wiki
  topics        = var.topics
  visibility    = var.visibility
  archived      = var.archived
}
