module "ec2" {
    source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance"
    ami = "ami-00a929b66ed6e0de6"
    instance_type = "t2.micro"
  
}