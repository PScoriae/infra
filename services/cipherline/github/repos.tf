module "cipherline" {
  source      = "../../../modules/github_repo"
  name        = "cipherline"
  description = "Real-time multiplayer team word-deduction game on Cloudflare Workers and Durable Objects"
  topics      = ["game", "cloudflare-workers", "durable-objects", "websockets", "typescript", "react"]
  visibility  = "private"
}
