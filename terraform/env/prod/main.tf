locals {
  cluster_name = "demo-eks"
}

module "vpc" {
  source  = "../../modules/vpc"

  name                 = var.vpc_name
  cidr                 = var.vpc_cidr
  azs                  = slice(data.aws_availability_zones.available.names, 0, 3)
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = var.enable_nat_gateway
  single_nat_gateway   = var.single_nat_gateway
  enable_dns_hostnames = var.enable_dns_hostnames
  public_subnet_tags   = var.public_subnet_tags
  private_subnet_tags  = var.private_subnet_tags
}

module "eks" {
  source  = "../../modules/eks"

  cluster_name                         = local.cluster_name
  cluster_version                      = var.cluster_version
  vpc_id                               = module.vpc.vpc_id
  subnet_ids                           = module.vpc.private_subnets
  cluster_endpoint_public_access       = var.cluster_endpoint_public_access
  enable_cluster_creator_admin_permissions = var.enable_cluster_creator_admin_permissions
  cluster_addons                       = var.cluster_addons
  eks_managed_node_group_defaults      = var.eks_managed_node_group_defaults
  eks_managed_node_groups              = var.eks_managed_node_groups
}
