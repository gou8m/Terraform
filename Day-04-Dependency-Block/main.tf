resource "aws_instance" "ec2" {
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
  
}

resource "aws_vpc" "cust-vpc" {
    cidr_block = "10.1.0.0/16"
    depends_on = [ aws_instance.ec2 ]
  
}