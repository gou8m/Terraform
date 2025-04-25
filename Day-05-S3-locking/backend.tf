terraform {
  backend "s3" {
    bucket = "agk-statefile-remote"
    key = "s3/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
    
  }
}