terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}