resource "aws_db_instance" "app_db" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.m8g.48xlarge"
  #name                 = "${var.environment}_db"
  db_subnet_group_name =  aws_db_subnet_group.my_db_subnet_group.name
  username             = "admin"
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  publicly_accessible  = false
  skip_final_snapshot  = true

  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]

  tags = {
    Name = "${var.environment}-rds-instance"
  }
}

resource "aws_db_subnet_group" "my_db_subnet_group" {
  name        = "my-db-subnet-group"
  description = "My DB subnet group"
  
  subnet_ids = [
    aws_subnet.private_subnet1.id,
    aws_subnet.private_subnet.id
  ]

  tags = {
    Name = "My DB Subnet Group"
  }
}
