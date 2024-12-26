# Create a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example-vpc"
  }
}

# Create a subnet in the VPC
resource "aws_subnet" "example_subnet" {
  vpc_id     = aws_vpc.example_vpc.id
  cidr_block = "10.0.2.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "example-subnet-demo2"
  }
}


