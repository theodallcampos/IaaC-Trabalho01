
# Variable that holds the CIDR block for the VPC
variable "vpc_cidr_block" {
  description = "CIDR block of the VPC"
}

# Creting the VPC and calling it tutorial_vpc
resource "aws_vpc" "tutorial_vpc" {
  # Setting the CIDR block of the VPC to the variable vpc_cidr_block
  cidr_block = var.vpc_cidr_block

  # Enabling DNS hostnames on the VPC
  enable_dns_hostnames = true

  # Setting the tag Name to tutorial_vpc
  tags = {
    Name = "tutorial_vpc"
  }
}
