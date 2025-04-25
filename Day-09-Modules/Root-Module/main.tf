module "ec2" {
    source = "../child-module/ec2"
    ami = var.ami
    instance_type = var.instance_type
  
}

module "s3" {
    source = "../child-module/s3"
    bucket = var.bucket
    
  
}