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

Open terminal and terraform init.
![image](https://user-images.githubusercontent.com/80820244/236618510-a06d5354-0398-4915-9e90-04e76c7cf14f.png)

Run terraform plan.
![image](https://user-images.githubusercontent.com/80820244/236618643-8bf4805d-2c86-4c97-b055-b2665842a5fd.png)


Run terraform apply.
![image](https://user-images.githubusercontent.com/80820244/236618565-3489d31d-6c43-4afe-a251-2be660781bf4.png)

