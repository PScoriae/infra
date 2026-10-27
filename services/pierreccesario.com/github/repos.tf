module "pierreccesario" {
  source      = "../../../modules/github_repo"
  name        = "pierreccesario"
  description = "My personal portfolio website built with Hugo, built with GitHub Actions and deployed on AWS."
  topics      = ["aws", "portfolio", "hugo", "cloudflare", "github", "github-actions"]
}
