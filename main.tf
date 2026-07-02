module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "security_group" {
  source = "./modules/security-group"

  project_name = var.project_name
  environment  = var.environment

  vpc_id = module.vpc.vpc_id
}

module "eks" {

  source = "./modules/eks"

  project_name = var.project_name
  environment  = var.environment

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_role_arn = module.iam.eks_cluster_role_arn

  cluster_security_group_id = module.security_group.eks_cluster_security_group_id

}