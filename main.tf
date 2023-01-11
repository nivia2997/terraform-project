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

resource "aws_route_table" "rt_terraform" {
  vpc_id = aws_vpc.test_vpc.id

  tags = {
    Name = var.Name_internet_gateway
  }
}

resource "aws_route" "route_terraform" {
  route_table_id         = aws_route_table.rt_terraform.id
  destination_cidr_block = var.destination_cidr_block
  gateway_id             = aws_internet_gateway.igw_terraform.id
}

resource "aws_route_table_association" "rt_ass_terraform" {
  subnet_id      = aws_subnet.subred_publica.id
  route_table_id = aws_route_table.rt_terraform.id
}