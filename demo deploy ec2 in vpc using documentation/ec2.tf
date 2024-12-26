resource "aws_instance" "my-ec2-vm" {
  ami                    = "ami-0453ec754f44f9a4a" # Amazon Linux
  instance_type          = "t2.micro"
  key_name               = "alifa"
  subnet_id              = aws_subnet.test-subnet1.id
  vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Alifa did something Amazing!!! <br> AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
    EOF
  tags = {
    "Name" = "myec2vm"
  }
}