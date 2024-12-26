terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}

# provider "aws" {
#   profile = "default"
#   region  = "us-east-1"
# }

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}