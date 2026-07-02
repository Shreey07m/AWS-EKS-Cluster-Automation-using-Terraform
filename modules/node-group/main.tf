resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn

  subnet_ids = var.private_subnet_ids

  ami_type       = "AL2023_x86_64_STANDARD"
  capacity_type  = var.capacity_type
  instance_types = var.instance_types

  scaling_config {
    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    Environment = "Development"
    NodeGroup   = "Primary"
  }

  tags = {
    Name = var.node_group_name
  }
}
