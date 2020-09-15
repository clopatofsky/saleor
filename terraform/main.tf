provider "aws" {
  profile = "default"
  region = "us-east-2"
}

resource "aws_ecr_repository" "saleor-backend" {
  name                 = "saleor-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "saleor_backend_repository_url" {
  value = aws_ecr_repository.saleor-backend.repository_url
}
