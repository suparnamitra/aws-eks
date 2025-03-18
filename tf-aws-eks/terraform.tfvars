# AWS Configuration
aws_region     = "us-east-1"
aws_account_id = "430118834478"

# VPC Configuration
vpc_name       = "eks-vpc"
vpc_cidr       = "192.168.0.0/16"
public_subnets = ["192.168.0.0/20", "192.168.16.0/20", "192.168.32.0/20"]
private_subnets = ["192.168.48.0/20", "192.168.64.0/20", "192.168.80.0/20"]

# EKS Configuration
eks_name       = "eks-prod"
cluster_version = "1.31"
instance_type  = "t3.medium"
is_spot        = true

# Tags
tags = {
  Environment = "dev"
  Terraform   = "true"
}

# Access Control
eks_admin_arns = [
  "arn:aws:iam::430118834478:user/eks16",
  "arn:aws:iam::430118834478:user/eks17",
  "arn:aws:iam::430118834478:role/gh-actions"
]
