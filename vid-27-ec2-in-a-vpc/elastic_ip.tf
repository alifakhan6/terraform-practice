# Resource-9: Create Elastic IP
resource "aws_eip" "my-eip" {
  instance = aws_instance.my-ec2-vm.id
  domain   = "vpc"

  # Meta-Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]
  tags = {

    Name = "my-EIP-dev"


  }


}