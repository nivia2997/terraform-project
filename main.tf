resource "aws_vpc" "test_vpc" {
  cidr_block = var.cidr_block

 
tags = {
    Name = "vpc_proyecto"
  }
}

resource "aws_subnet" "subred_publica" {
  vpc_id                  = aws_vpc.test_vpc.id
  cidr_block              = var.cidr_block_subnet
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name = "subred_publica"
  }
}

resource "aws_internet_gateway" "igw_test_vpc" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = var.Name_internet_gateway
  }
}