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

resource "aws_internet_gateway" "igw_terraform" {
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

resource "aws_security_group" "terraform_sg" {
  name        = "terraform_sg"
  description = "grupo de seguridad para instancias de subnet publico"
  vpc_id      = aws_vpc.test_vpc.id

ingress {
    from_port   = var.from_port_http
    to_port     = var.from_port_http
    protocol    = "tcp"
    cidr_blocks = var.ip_http
  }
ingress {
    from_port   = var.from_port_ssh
    to_port     = var.from_port_ssh
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks_ssh
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

tags = {
    Name = "terraform_sg"
  }
}
