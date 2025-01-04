variable "cluster_name" {
  description = "The name of the EKS cluster to be created."
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster."
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed."
}

variable "subnet_ids" {
  description = "A list of subnet IDs to associate with the EKS cluster."
}

variable "cluster_endpoint_public_access" {
  description = "Boolean to enable or disable public access to the EKS cluster endpoint."
}

variable "enable_cluster_creator_admin_permissions" {
  description = "Boolean to grant the cluster creator administrative permissions on the EKS cluster."
}

variable "cluster_addons" {
  description = "Map of EKS cluster add-ons to enable and configure."
}

variable "eks_managed_node_group_defaults" {
  description = "Default configuration settings for all EKS managed node groups."
}

variable "eks_managed_node_groups" {
  description = "Configuration settings for individual EKS managed node groups."
}
