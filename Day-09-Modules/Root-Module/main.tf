module "ec2" {
    source = "../child-module/ec2"
    ami = var.ami
    instance_type = var.instance_type
  
}

module "s3" {
    source = "../child-module/s3"
    bucket = var.bucket
    
  
}


module "rds" {
  source = "../child-module/rds"

  providers = {
    aws.primary = aws.primary
    aws.replica = aws.replica
  }

  primary_identifier  = "mydb-primary"
  replica_identifier  = "mydb-replica"
  instance_class      = "db.t3.micro"
  allocated_storage   = 20
  username            = "admin"
  password            = "Cloud123"
  db_name             = "mydatabase"
}
