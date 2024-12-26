# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

#App Nmae S3 Bucket used for
variable "app_name" {
  description = "application name"
  type = string
  
}
#environment name
variable "environment_name" {
  description = "Environtment name"
  type = string
}
