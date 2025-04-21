terraform {
  backend "s3" {
    bucket = "s3-state-filelock"
    key = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt = true
    
  }
}