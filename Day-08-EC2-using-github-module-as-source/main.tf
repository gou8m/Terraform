module "ec2" {
    source = "github.com/gou8m/Terraform/Day-08-EC2-Module"
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
  
}