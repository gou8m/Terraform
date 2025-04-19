terraform {
  backend "s3" {
    bucket = "agk-statefile-remote"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}