provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "fintech_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "fintech-vpc"
  }
}

resource "aws_subnet" "fintech_subnet" {
  vpc_id            = aws_vpc.fintech_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "fintech-subnet"
  }
}