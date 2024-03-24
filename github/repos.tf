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
