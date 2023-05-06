# Creating an EC2 instance using terraform.

Create an instance "HelloWorld".
Setup the provider and the instance attributes.

```terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  region="ap-south-1"

}

resource "aws_instance" "first" {
  ami           = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
```
