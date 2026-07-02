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
