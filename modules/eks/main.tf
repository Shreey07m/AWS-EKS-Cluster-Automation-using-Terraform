resource "aws_eks_cluster" "eks_cluster" {

  name = "${var.project_name}-${var.environment}-cluster"

  role_arn = var.cluster_role_arn

  version = var.cluster_version

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator"
  ]

  vpc_config {

    subnet_ids = var.private_subnet_ids

    security_group_ids = [
      var.cluster_security_group_id
    ]

    endpoint_private_access = true

    endpoint_public_access = true

    public_access_cidrs = [
      "0.0.0.0/0"
    ]

  }

  depends_on = [
    var.cluster_role_arn
  ]

  tags = {

    Name = "${var.project_name}-${var.environment}-cluster"

  }

}