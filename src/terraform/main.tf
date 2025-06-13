terraform {
  backend "s3" {
    bucket = "vmarti-terraform-state"
    key    = "terraform/state"
    region = "eu-central-1"
  }
}


resource "aws_ecr_repository" "ecr_api" {
  name                 = "ecr_api"
}
