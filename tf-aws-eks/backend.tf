terraform {
  backend "s3" {
    bucket = "tcslabsfjbs"
    key    = "eks/terraform.tfstate"
    region = "ap-south-1"
  }
}
