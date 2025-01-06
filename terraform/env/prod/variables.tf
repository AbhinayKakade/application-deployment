variable "region" {
  description = "The AWS region where the infrastructure will be deployed."
}

variable "vpc_name" {
  description = "The name of the VPC to be created."
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
}

variable "private_subnets" {
  description = "A list of private subnet CIDR blocks for the VPC."
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks for the VPC."
}

variable "enable_nat_gateway" {
  description = "Boolean to enable or disable NAT Gateway."
}

variable "single_nat_gateway" {
  description = "Boolean to specify whether a single NAT Gateway should be used."
}

variable "enable_dns_hostnames" {
  description = "Boolean to enable or disable DNS hostnames in the VPC."
}

variable "public_subnet_tags" {
  description = "Map of tags to apply to public subnets."
}

variable "private_subnet_tags" {
  description = "Map of tags to apply to private subnets."
}

variable "cluster_version" {
  description = "The version of the EKS cluster to deploy."
}

variable "cluster_endpoint_public_access" {
  description = "Boolean to enable or disable public access to the EKS cluster endpoint."
}

variable "enable_cluster_creator_admin_permissions" {
  description = "Boolean to grant the cluster creator administrative permissions on the cluster."
}

variable "cluster_addons" {
  description = "Map of EKS cluster add-ons to enable."
}

variable "eks_managed_node_group_defaults" {
  description = "Default configuration for EKS managed node groups."
}

variable "eks_managed_node_groups" {
  description = "Configuration for individual EKS managed node groups."
}
