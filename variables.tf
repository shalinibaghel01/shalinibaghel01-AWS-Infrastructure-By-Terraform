variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.20.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = "10.20.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2"
  default     = "ami-02457590d33d576c3" # Replace if you're using another region
}

variable "project_name" {
  description = "Project name tag"
  default     = "Terraform-Webserver"
}