provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = var.backend_bucket
    key    = var.backend_key
    region = var.backend_region
  }
}
