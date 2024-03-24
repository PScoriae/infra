resource "github_repository" "infra" {
  name          = "infra"
  description   = "Terraform IaC for my projects on AWS, GCP, Cloudflare and GitHub"
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics        = ["terraform", "aws", "gcp", "cloudflare", "github"]
  visibility    = "public"
}

resource "github_repository" "dotfiles" {
  name          = "dotfiles"
  description   = "Backup of all my dotfiles."
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics        = ["dotfiles", "macos", "shell", "zsh"]
  visibility    = "public"
}

resource "github_repository" "pierreccesario" {
  name          = "pierreccesario"
  description   = "My personal portfolio website built with Hugo, built with GitHub Actions and deployed on AWS."
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics        = ["aws", "portfolio", "hugo", "cloudflare", "github", "github-actions"]
  visibility    = "public"
}
