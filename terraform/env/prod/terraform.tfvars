# AWS Region
region = "us-east-1"

# VPC Configuration
vpc_name   = "demo-vpc"
vpc_cidr   = "10.0.0.0/16"
azs        = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

# NAT Gateway Configuration
enable_nat_gateway = true
single_nat_gateway = true
enable_dns_hostnames = true

# Subnet Tags
public_subnet_tags = {
  "kubernetes.io/role/elb" = "1"
}
private_subnet_tags = {
  "kubernetes.io/role/internal-elb" = "1"
}

# EKS Configuration
cluster_name                             = "demo-eks-cluster"
cluster_version                          = "1.29"
cluster_endpoint_public_access           = true
enable_cluster_creator_admin_permissions = true
cluster_addons = {
  coredns = { most_recent = true }
  kube-proxy = { most_recent = true }
  vpc-cni = { most_recent = true }
}

# Node Groups Configuration
eks_managed_node_group_defaults = {
  ami_type = "AL2_x86_64"
}

eks_managed_node_groups = {
  one = {
    name          = "node-group-1"
    instance_types = ["t3.small"]
    min_size      = 1
    max_size      = 3
    desired_size  = 2
  }
  two = {
    name          = "node-group-2"
    instance_types = ["t3.small"]
    min_size      = 1
    max_size      = 2
    desired_size  = 1
  }
}
