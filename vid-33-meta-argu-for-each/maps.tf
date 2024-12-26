# Create ec2 instances per environment with for_each and maps
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_instance" "web" {
  ami           = "ami-047a51fa27710816e" # Amazon Linux
  instance_type = "t2.micro"

  # for_each Meta-Argument
  for_each = {
    dev  = "my-dapp-instances"
    qa   = "my-qapp-instances"
    stag = "my-sapp-instances"
    prod = "my-papp-instances"
  }


  #acl    = "private" # This argument is deprecated, so commenting it. 
  tags = {
    Environment = each.key
    bucketname  = "${each.key}-${each.value}"
    eachvalue   = each.value
  }
}