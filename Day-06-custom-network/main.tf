# Creation of VPC

resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "cust-vpc"
  }
}

#Creation of IGW and Attach to VPC

resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "my-igw"
    }
}

#Creation of Subnet (Public)

resource "aws_subnet" "pub-subnet" {
    cidr_block = "10.0.0.0/24"
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "public-subnet"
    }
  
}

#Creation of Subnet (Private)

resource "aws_subnet" "pvt-subnet" {
    cidr_block = "10.0.1.0/24"
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "private-subnet"
    }
  
}

#Creation of Route Table (Public)

resource "aws_route_table" "route-table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
      Name = "my-pub-rt"
    }
  
}
#Creation of Route Table (Private)

resource "aws_route_table" "pvt-route-table" {
    vpc_id = aws_vpc.vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.ngw.id
    }

    tags = {
      Name = "my-pvt-rt"
    }
  
}

#Creation of EIP

resource "aws_eip" "eip" {
    domain = "vpc"
  
}

#Creation of Nat Gateway

resource "aws_nat_gateway" "ngw" {
    subnet_id = aws_subnet.pub-subnet.id
    allocation_id = aws_eip.eip.id
    
  
}
#Subnet Associations

resource "aws_route_table_association" "pub-sub-net-ass" {
    subnet_id = aws_subnet.pub-subnet.id
    route_table_id = aws_route_table.route-table.id
  
}

resource "aws_route_table_association" "pvt-sub-net-ass" {
    subnet_id = aws_subnet.pvt-subnet.id
    route_table_id = aws_route_table.pvt-route-table.id
  
}

#Creation of SG

resource "aws_security_group" "sg" {
    description = "Allow SSH"
    vpc_id = aws_vpc.vpc.id

    tags = {
      Name = "my-sg"
    }
  
  ingress {
    description = "TLS from VPC"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

}

#Creation of Instance

resource "aws_instance" "test" {
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.pub-subnet.id
    associate_public_ip_address = true
    key_name = "vaultaccess"
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = {
      Name = "pub-server"
    }
  
}

resource "aws_instance" "pvt-server" {
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.pvt-subnet.id
    associate_public_ip_address = false
    key_name = "vaultaccess"
    vpc_security_group_ids = [aws_security_group.sg.id]

    tags = {
      Name = "pvt-server"
    }
  
}

