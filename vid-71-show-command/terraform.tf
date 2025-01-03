terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }

  backend "s3" {
    bucket = "alifa-bucket-backend"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    #for state locking
    dynamodb_table = "dev-alifa-table"

  }


}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
