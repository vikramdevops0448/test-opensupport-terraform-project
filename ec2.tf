resource "aws_instance" "app_instance" {
  ami                         = "ami-05b10e08d247fb927"  # Replace with a valid AMI
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  security_groups             = aws_security_group.ec2_security_group.id
  key_name                    = "jenkins"  # Add your SSH key

  tags = {
    Name = "${var.environment}-app-instance"
  }
}

#terraform {
 # backend "s3" {
  #  bucket = var.backend_bucket
   # key    = var.backend_key
    #region = var.backend_region
  #}
#}

