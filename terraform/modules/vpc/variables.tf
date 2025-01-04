variable "name" {
  description = "The name of the VPC to be created."
}

variable "cidr" {
  description = "The CIDR block for the VPC."
}

variable "azs" {
  description = "A list of availability zones to use for the VPC subnets."
}

variable "private_subnets" {
  description = "A list of private subnet CIDR blocks for the VPC."
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks for the VPC."
}

variable "enable_nat_gateway" {
  description = "Boolean to enable or disable NAT Gateways for the VPC."
}

variable "single_nat_gateway" {
  description = "Boolean to specify whether to use a single NAT Gateway for all private subnets."
}

variable "enable_dns_hostnames" {
  description = "Boolean to enable or disable DNS hostnames for the VPC."
}

variable "public_subnet_tags" {
  description = "Map of tags to apply to the public subnets."
}

variable "private_subnet_tags" {
  description = "Map of tags to apply to the private subnets."
}
