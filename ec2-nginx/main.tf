terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "pranay"
}
resource "aws_instance" "web" {
  ami           = "ami-07bc5cc4add81dad9"
  instance_type = "t4g.nano"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install nginx1
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = {
    Name = "nginx-server"
  }
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}
