output "availability_zones" {

  value = data.aws_availability_zones.available.names

}

output "eks_cluster_role_arn" {

  value = module.iam.eks_cluster_role_arn

}

output "eks_node_group_role_arn" {

  value = module.iam.eks_node_group_role_arn

}

output "cluster_security_group" {

  value = module.security_group.eks_cluster_security_group_id

}

output "node_security_group" {

  value = module.security_group.eks_node_security_group_id

}

output "cluster_name" {

  value = module.eks.cluster_name

}

output "cluster_endpoint" {

  value = module.eks.cluster_endpoint

}

output "cluster_arn" {

  value = module.eks.cluster_arn

}

output "node_group_name" {

  value = module.eks_node_group.node_group_name

}

output "node_group_arn" {

  value = module.eks_node_group.node_group_arn

}