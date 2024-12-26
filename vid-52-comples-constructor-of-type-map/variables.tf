# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-0453ec754f44f9a4a" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 2
}
# #assign when promted using CLI
# variable "ec2_instance_type" {
#   description = "EC2 Instance Type"
#   type        = list(string)
#   default     = ["t3.micro", "t3.small", "t3.large"]

# }


variable "ec2_instance_tags" {

  description = "EC2 Instance Tags"
  type = map(string)
  default = {
    "Name" = "ec2-web"
    "Tier" = "web"
  }
  
}

variable "ec2_instance_type_map" {
  description = "Ec2 Instance type"
  type = map(string)
  default = {
   "small-apps" = "t3.micro"
    "medium-apps" = "t3.medium" 
    "big-apps" = "t3.large"
  }
  
}