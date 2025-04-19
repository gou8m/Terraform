resource "aws_vpc" "my-vpc" {
    cidr_block = "10.0.0.0/16"
  
}

resource "aws_subnet" "subnet-1" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.my-vpc.id  
}

resource "aws_subnet" "subnet-2" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.my-vpc.id  
}

resource "aws_subnet" "subnet-3" {
    cidr_block = "10.0.2.0/24"
    vpc_id = aws_vpc.my-vpc.id  
}