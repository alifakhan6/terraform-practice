# EC2 Instance in the subnet
resource "aws_instance" "example_ec2" {
  ami           = "ami-0915bcb5fa77e4892" # Replace with a valid AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id


  lifecycle {
    replace_triggered_by = [aws_subnet.example_subnet] # Replace EC2 if subnet changes
  }
  tags = {
    Name = "example-ec2"
  }
}