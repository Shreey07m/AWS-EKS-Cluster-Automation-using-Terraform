output "eks_cluster_security_group_id" {
  value = aws_security_group.eks_cluster_sg.id
}

output "eks_node_security_group_id" {
  value = aws_security_group.eks_node_sg.id
}
