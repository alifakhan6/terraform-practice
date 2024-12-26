# Output VPC ID
output "vpc_id" {
  value       = aws_vpc.vpc-dev.id
  description = "The ID of the VPC"
}

# Output Subnet IDs
output "subnet_ids" {
  value       = aws_subnet.vpc-dev-public-subnet-1.id
  description = "The ID of the public subnet"
}
