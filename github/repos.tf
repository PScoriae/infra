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

resource "github_repository" "ansible_playbooks" {
  name          = "ansible-playbooks"
  description   = "Playbooks to bootstrap and configure my VMs"
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics        = ["nginx", "ansible", "aws", "gcp", "devops", "cloudflare", "proxmox"]
  visibility    = "public"
}

resource "github_repository" "movie_recommender" {
  name          = "movie-recommender"
  description   = "Functional Python program that takes in a list of favourite movies and returns recommended movies"
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics        = ["python", "movies"]
  visibility    = "public"
}

resource "github_repository" "mongogin" {
  name          = "mongogin"
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  visibility    = "public"
}

resource "github_repository" "imyour_joy_py" {
  name          = "imyour_joy_py"
  description   = "A simple Kpop discord.py bot."
  archived      = true
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  visibility    = "public"
}

resource "github_repository" "imyour_joy" {
  name          = "imyour_joy"
  description   = "A self-hosted Kpop themed discord.js bot sandbox for my projects."
  archived      = true
  has_downloads = false
  has_issues    = false
  has_projects  = false
  has_wiki      = false
  topics = [
    "bot", "docker", "jenkins", "spotify", "automation", "youtube", "discord", "discord-bot", "discord-js", "kpop", "webscraping"
  ]
  visibility = "public"
}
