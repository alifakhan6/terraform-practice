terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
   }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-alifa"
    key    = "dev/terraform.tfstate"
    region = "us-east-1" 
/*
    # Enable during Step-09     
    # For State Locking
    dynamodb_table = "terraform-dev-state-table"    
*/    
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/