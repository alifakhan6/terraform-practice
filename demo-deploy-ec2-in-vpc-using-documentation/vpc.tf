resource "aws_vpc" "testvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "alifa-vpc"
  }
}
resource "aws_subnet" "test-subnet1" {
  vpc_id                  = aws_vpc.testvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "alifa-Public-Subnet"
  }
}
resource "aws_internet_gateway" "alifa-igw" {
  vpc_id = aws_vpc.testvpc.id

  tags = {
    Name = "alifa-dev"
  }
}
resource "aws_route_table" "alifa-public-route-table" {
  vpc_id = aws_vpc.testvpc.id

  tags = {
    Name = "route-table-dev"
  }
}
#creating route in route table for internet access
resource "aws_route" "alifa-public-route" {
  route_table_id         = aws_route_table.alifa-public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.alifa-igw.id
}
# for subnet
resource "aws_route_table_association" "vpc-dev-public-route-table-associate" {
  route_table_id = aws_route_table.alifa-public-route-table.id
  subnet_id      = aws_subnet.test-subnet1.id
}

# Resource-7: Create Security Group
resource "aws_security_group" "dev-vpc-sg" {
  name        = "dev-vpc-default-sg"
  vpc_id      = aws_vpc.testvpc.id
  description = "Dev VPC Default Security Group"

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #data entering
  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #data leaving
  egress {
    description = "Allow all ip and ports outboun"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "alifa-sg-dev"
  }

}

