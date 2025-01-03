terraform {
  required_version = "~>1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.79.0"
    }
  }
  backend "s3" {
    bucket = "terraform-alifa"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    #for state locking
    #dynamodb_table = "table_name"

  }

}
module "tf-state" {
  source     = "./modules/tf-state"
  table_name = local.table_name
}

module "ecrRepo" {
  source = "./modules/ecr"

  ecr_repo_name = local.ecr_repo_name

}