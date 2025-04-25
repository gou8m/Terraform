resource "aws_s3_bucket" "remote-state-s3" {
    bucket = "agk-statefile-remote"
    
}

resource "aws_s3_bucket_versioning" "versioning" {
    bucket = aws_s3_bucket.remote-state-s3.id

    versioning_configuration {
      status = "Enabled"
    }
  
}