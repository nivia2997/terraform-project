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

variable "destination_cidr_block" {
  description = "asignando un destino a aws route"
  type        = string
  default     = "0.0.0.0/0"
}

variable "from_port_http" {
  description = "asignar puertos"
  type        = string
  default     = "80"
}

variable "from_port_https" {
  description = "asignar puertos"
  type        = string
  default     = "443"
}

variable "ip_http" {
  description = "ip para cidr"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "ip_https" {
  description = "ip para cidr"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "from_port_ssh" {
  description = "ip para ssh"
  type        = string
  default     = 22
}

variable "to_port_ssh" {
  description = "ip para ssh"
  type        = string
  default     = 22
}

variable "cidr_blocks_ssh" {
  description = "cidr block para ssh"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
