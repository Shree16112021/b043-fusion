provider "aws" {
    region = "us-east-2"
  
}
resource "aws_vpc" "myvpctest" {
    cidr_block = "15.15.0.0/16"
  
  }

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.myvpctest.id
  cidr_block = "15.15.1.0/24"

  tags = {
    Name = "public"
  }
}
