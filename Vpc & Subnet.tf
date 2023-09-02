provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVSU3ITXLL6RF3WM7"
  secret_key = "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"
  
}

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
tags = {
    Name = "Production"
  }
}
resource "aws_subnet" "subnet-1" {
    vpc_id = aws_vpc.first-vpc.id
    cidr_block ="10.0.1.0/24"
    tags ={
        name ="Prod_subnet"
    }
}
