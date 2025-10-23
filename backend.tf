terraform {
  backend "s3" {
    bucket = "fl-demo-tf-state"
    key    = "dev/terraform.tfstate"
    region = "us-west-1"
  }
}

