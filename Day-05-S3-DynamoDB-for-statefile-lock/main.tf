resource "aws_s3_bucket" "sf-lock" {
    bucket = "s3-state-filelock"
  
}


resource "aws_dynamodb_table" "dynamodb-tf-state-lock" {
  name = "terraform-state-lock"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}