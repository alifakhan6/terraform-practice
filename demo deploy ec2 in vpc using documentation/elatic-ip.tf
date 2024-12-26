resource "aws_eip" "my-eip" {
  instance = aws_instance.my-ec2-vm.id
  domain   = "vpc"


  depends_on = [aws_internet_gateway.alifa-igw]
  tags = {

    Name = "my-EIP-dev"


  }


}