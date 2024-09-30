variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (development, staging, production)"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "db_password" {
  description = "RDS password"
  type        = string
  sensitive   = true
}

# For backend (state file)
variable "backend_bucket" {
  description = "S3 bucket for backend"
}

variable "backend_key" {
  description = "S3 key for backend"
}

variable "backend_region" {
  description = "Region of the backend S3 bucket"
  default     = "us-east-1"
}
