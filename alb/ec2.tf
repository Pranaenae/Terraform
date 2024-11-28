resource "aws_instance" "web" {
  ami           = "ami-07bc5cc4add81dad9"
  instance_type = "t4g.nano"
  subnet_id     = "subnet-08f50e5d75bc61daa"
  user_data     = <<-EOF
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

