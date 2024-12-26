# Create EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "alifa-ec2-vm" {
  ami               = "ami-038bba9a164eb3dc1"
  instance_type     = "t2.micro"
  availability_zone = "us-west-1a"
  #availability_zone = "us-west-1b"
  tags = {
    Name = "web"
    "tag1" = "Update-test-1"   
  }
}