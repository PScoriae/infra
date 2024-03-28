module "infra" {
  source      = "../modules/github_repo"
  name        = "infra"
  description = "Terraform IaC for my projects on AWS, GCP, Cloudflare and GitHub"
  topics      = ["terraform", "aws", "gcp", "cloudflare", "github"]
}

module "dotfiles" {
  source      = "../modules/github_repo"
  name        = "dotfiles"
  description = "Backup of all my dotfiles."
  topics      = ["dotfiles", "macos", "shell", "zsh"]
}

module "pierreccesario" {
  source      = "../modules/github_repo"
  name        = "pierreccesario"
  description = "My personal portfolio website built with Hugo, built with GitHub Actions and deployed on AWS."
  topics      = ["aws", "portfolio", "hugo", "cloudflare", "github", "github-actions"]
}

module "ansible_playbooks" {
  source      = "../modules/github_repo"
  name        = "ansible-playbooks"
  description = "Playbooks to bootstrap and configure my VMs"
  topics      = ["nginx", "ansible", "aws", "gcp", "devops", "cloudflare", "proxmox"]
}

module "movie_recommender" {
  source      = "../modules/github_repo"
  name        = "movie-recommender"
  description = "Functional Python program that takes in a list of favourite movies and returns recommended movies"
  topics      = ["python", "movies"]
}

module "mongogin" {
  source = "../modules/github_repo"
  name   = "mongogin"
}

module "imyour_joy_py" {
  source      = "../modules/github_repo"
  name        = "imyour_joy_py"
  description = "A simple Kpop discord.py bot."
  archived    = true
}

module "imyour_joy" {
  source      = "../modules/github_repo"
  name        = "imyour_joy"
  description = "A self-hosted Kpop themed discord.js bot sandbox for my projects."
  archived    = true
  topics      = ["bot", "docker", "jenkins", "spotify", "automation", "youtube", "discord", "discord-bot", "discord-js", "kpop", "webscraping"]
}

module "pcpartstool" {
  source      = "../modules/github_repo"
  name        = "PCPartsTool"
  description = "SvelteKit MongoDB App, part of a series of repositories with the aim of learning DevOps best practices and tooling."
  archived    = true
  topics      = ["docker", "nginx", "jenkins", "aws", "ansible", "typescript", "svelte", "sveltekit"]
}

module "pcpartstool_scraper" {
  source      = "../modules/github_repo"
  name        = "PCPartsTool-Scraper"
  description = "Node.js PC part data and pricing scraper for the PCPartsTool project"
  archived    = true
  topics      = ["javascript", "docker", "jenkins", "scraping"]
}
