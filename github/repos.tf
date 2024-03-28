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
  archived    = true
}

module "mongogin" {
  source   = "../modules/github_repo"
  name     = "mongogin"
  archived = true
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

module "ucs_seating_algorithm" {
  source      = "../modules/github_repo"
  name        = "UCS-Seating-Algorithm"
  description = "Python-based modified UCS algorithm used to determine the best seating arrangements based on comfortability rating between people"
  archived    = true
}

module "basic_scala_sockets" {
  source      = "../modules/github_repo"
  name        = "BasicScalaSockets"
  description = "Rudimentary implementation of Client-Server Arch in Scala"
  archived    = true
}

module "pepeclicker" {
  source      = "../modules/github_repo"
  name        = "PepeClicker"
  description = "Pepe the Frog themed cookie clicker game built with Scala and ScalaFX."
  topics      = ["game", "scala", "scalafx", "cookie-clicker", "pepe-the-frog", "pepe"]
  archived    = true
}

module "bst_huffman" {
  source      = "../modules/github_repo"
  name        = "BST_Huffman"
  description = "Java implementation of Binary Search Tree and Huffman Encoding for Data Structures and Algorithms CSC2103 Assignment."
  topics      = ["java", "algorithms", "data-structures", "huffman-encoding", "binary-search-tree"]
  archived    = true
}

module "mastermindpy" {
  source      = "../modules/github_repo"
  name        = "MastermindPy"
  description = "The popular game implemented in Python3's console"
  topics      = ["python", "game", "mastermind"]
  archived    = true
}
