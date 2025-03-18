terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.90.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.36.0"
    }
  }
  backend "s3" {
    bucket = "tcslabsfjbs"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}
