terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws-region
  access_key = var.aws-access-key
  secret_key = var.aws-secret-key
}
