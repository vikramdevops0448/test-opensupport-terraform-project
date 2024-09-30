resource "aws_s3_bucket" "app_static_files" {
  bucket = "${var.environment}-app-static-files"

  tags = {
    Name = "${var.environment}-s3-bucket"
  }
}
