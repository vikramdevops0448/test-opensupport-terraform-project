resource "aws_instance" "app_instance" {
  ami                         = "ami-0c55b159cbfafe1f0"  # Replace with a valid AMI
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  security_groups             = [aws_security_group.ec2_security_group.name]
  key_name                    = "your-ssh-key"  # Add your SSH key

  tags = {
    Name = "${var.environment}-app-instance"
  }
}
