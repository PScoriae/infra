module "cipherline" {
  source      = "../../../modules/github_repo"
  name        = "cipherline"
  description = "Real-time multiplayer team word-deduction game on Cloudflare Workers and Durable Objects"
  topics      = ["game", "cloudflare-workers", "durable-objects", "websockets", "typescript", "react"]
  visibility  = "private"
}

# Adopt from the old github/ state; safe to delete after the first apply.
# The actions secrets aren't imported: their values can't be read back, and creating them just overwrites the same values.
import {
  to = module.cipherline.github_repository.this
  id = "cipherline"
}
