provider "aws" {
    region = "us-east-2"
  
}
resource "aws_vpc" "myvpctest" {
    cidr_block = "15.15.0.0/16"
  
  }


