resource "aws_ecr_registry_scanning_configuration" "configuration" {
  scan_type = "BASIC"

  rule {
    scan_frequency = "SCAN_ON_PUSH"
    repository_filter {
      filter      = "*"
      filter_type = "WILDCARD"
    }
  }
}