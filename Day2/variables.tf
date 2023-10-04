
variable "ami" {
  type        = string
}

variable "instance_type" {
  type        = string
}

variable "region" {
  type        = string
}

variable "vpc_cidr_block" {
  type        = string
}

variable "public_subnets_cidr_blocks" {
  type        = list(string)
}

variable "private_subnets_cidr_blocks" {
  type        = list(string)
}

variable "availability_zones" {
  type        = list(string)
}

variable "tcp_protocol" {
  type        = string
}