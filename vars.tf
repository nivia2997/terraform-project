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
