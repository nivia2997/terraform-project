variable "region" {
  description = "asignar una region"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "asignar un cidr block al vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cidr_block_subnet" {
  description = "asignar cidr block para el subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "eligiendo una zona de disponibilidad"
  type        = string
  default     = "us-east-1a"
}

variable "Name_internet_gateway" {
  description = "asignando un internet gateway"
  type        = string
  default     = "igw_terraform"
}

variable "aws_route_table" {
  description = "asignando un route table"
  type        = string
  default     = "rt_terraform"
}

variable "gateway_id" {
  description = "asignando un id gateway"
  type        = string
  default     = "terraform"
}

variable "destination_cidr_block" {
  description = "asignando un destino a aws route"
  type        = string
  default     = "0.0.0.0/0"
}