terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
}
# Provider-1 for us-east-1 (Default Provider)
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# Provider-2 for us-west-1
provider "aws" {
  region  = "us-west-1"
  profile = "default"
  alias   = "alifa" #(lets you define multiple configurations for the same provider)

}


