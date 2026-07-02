variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_group_name" {
  description = "EKS Node Group Name"
  type        = string
}

variable "node_role_arn" {
  description = "IAM Role ARN for worker nodes"
  type        = string
}

variable "private_subnet_ids" {
  description = "Private subnet IDs"
  type        = list(string)
}

variable "instance_types" {
  description = "EC2 instance types"
  type        = list(string)
}

variable "capacity_type" {
  description = "ON_DEMAND or SPOT"
  type        = string
}

variable "desired_size" {
  type = number
}

variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}