resource "aws_instance" "us-east-1-server" {
    provider = aws.us-east-1
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"

    tags = {
      "Name" = "us-east-1-server"
    }
  
}

resource "aws_instance" "ap-south-1-server" {
    provider = aws.ap-south-1
    ami = "ami-002f6e91abff6eb96"
    instance_type = "t2.micro"

    tags = {
      "Name" = "ap-south-1-server"
    }
  
}

resource "aws_instance" "ap-southeast-1-server" {
    provider = aws.ap-southeast-1
    ami = "ami-065a492fef70f84b1"
    instance_type = "t2.micro"

    tags = {
      "Name" = "ap-southeast-1-server"
    }
  
}

resource "aws_instance" "eu-west-2-server" {
    provider = aws.eu-west-2
    ami = "ami-05238ab1443fdf48f"
    instance_type = "t2.micro"

    tags = {
      "Name" = "eu-west-2-server"
    }
  
}