resource "aws_instance" "web" {
  ami           = "ami-07bc5cc4add81dad9"
  instance_type = "t4g.nano"
  subnet_id     = aws_subnet.private[0].id
}


