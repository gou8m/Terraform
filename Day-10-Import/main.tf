resource "aws_instance" "dev" {
    ami = "ami-0e449927258d45bc4"
    instance_type = "t2.micro"

    tags = {
      Name = "test"
    }
  
}


# ---------------------------------------------------------------
# Terraform Import Process
# ---------------------------------------------------------------

# 1. Created a new folder for import task:
#    mkdir Day-10-Import && cd Day-10-Import

# 2. Created basic Terraform configuration files:
#    touch main.tf provider.tf

# 3. Initialized Terraform inside the new folder:
#    terraform init

# 4. Ran terraform plan to ensure no existing configuration.

# 5. Defined a dummy resource block for aws_instance:
#    resource "aws_instance" "dev" {
  # Empty block initially — required for import
#    }

# 6. Ran terraform import to import an existing EC2 instance into Terraform state:
#    terraform import aws_instance.dev i-06a678ddc52bf750e

# 7. After import, ran terraform plan to check for missing arguments.
#    Terraform asked for missing values like `ami`, `instance_type`.

# 8. Updated main.tf with correct values (like ami, instance_type) to match the imported instance.

# 9. Ran terraform plan again to verify:
#    - First time: showed plan to add some tags
#    - Final time: showed "No changes", meaning successful import.

# ---------------------------------------------------------------
# Now the imported AWS instance is fully managed by Terraform.
# ---------------------------------------------------------------
