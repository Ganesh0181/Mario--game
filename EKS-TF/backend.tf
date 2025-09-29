terraform {
  backend "s3" {
    bucket = "ganesh-mrcloudbook777"
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
  }
}

