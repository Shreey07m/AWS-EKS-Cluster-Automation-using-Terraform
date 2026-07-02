locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = var.owner
  }
}

locals {
  cluster_name    = "--cluster"
  node_group_name = "nodegroup"
}
