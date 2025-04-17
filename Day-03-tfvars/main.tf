resource "aws_instance" "test-server" {
    ami = var.ami
    instance_type = var.ins-type

    tags = {
      "Name" = "test-server"
    }
  
}

resource "aws_s3_bucket" "name" {
  bucket = ""
}

