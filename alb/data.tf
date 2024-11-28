data "aws_vpc" "existing" {
  id = var.vpc_id
}

data "aws_subnet" "public1" {
  id = var.subnet1_id
}

data "aws_subnet" "public2" {
  id = var.subnet2_id
}


