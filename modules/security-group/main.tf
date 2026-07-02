resource "aws_security_group" "eks_cluster_sg" {
  name        = "--eks-cluster-sg"
  description = "Security Group for EKS Control Plane"
  vpc_id      = var.vpc_id

  tags = {
    Name = "--eks-cluster-sg"
  }
}

resource "aws_security_group" "eks_node_sg" {
  name        = "--eks-node-sg"
  description = "Security Group for EKS Worker Nodes"
  vpc_id      = var.vpc_id

  tags = {
    Name = "--eks-node-sg"
  }
}

resource "aws_vpc_security_group_egress_rule" "cluster_all_egress" {
  security_group_id = aws_security_group.eks_cluster_sg.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "node_all_egress" {
  security_group_id = aws_security_group.eks_node_sg.id
  ip_protocol       = "-1"
  cidr_ipv4         = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "cluster_from_nodes" {
  security_group_id            = aws_security_group.eks_cluster_sg.id
  referenced_security_group_id = aws_security_group.eks_node_sg.id
  ip_protocol                  = "-1"
}

resource "aws_vpc_security_group_ingress_rule" "nodes_from_cluster" {
  security_group_id            = aws_security_group.eks_node_sg.id
  referenced_security_group_id = aws_security_group.eks_cluster_sg.id
  ip_protocol                  = "-1"
}

resource "aws_vpc_security_group_ingress_rule" "nodes_internal" {
  security_group_id            = aws_security_group.eks_node_sg.id
  referenced_security_group_id = aws_security_group.eks_node_sg.id
  ip_protocol                  = "-1"
}
