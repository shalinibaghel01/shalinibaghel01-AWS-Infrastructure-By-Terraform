output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.net1.id
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = aws_subnet.sub1.id
}

output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}