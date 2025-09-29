terraform {
  backend "s3" {
    bucket = "my_terraform_state_bucket"
    key    = "eks/terraform.tfstate"
    region = "us-west-2"
  }
}

