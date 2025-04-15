# Terraform 
Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp in 2014. It's designed to let users define and provision infrastructure using a high-level configuration language. Terraform uses HashiCorp Configuration Language (HCL) by default, but also supports JSON. It was written in Go, making it fast, portable, and efficient.

With Terraform, you can automate infrastructure deployment across a wide variety of platforms including major cloud providers like AWS, Azure, Google Cloud, and others. It’s cross-platform and runs on Windows, macOS, and Linux.

Terraform enables teams to version, reuse, and collaborate on infrastructure just like they do with application code. Although it was initially open-source and remains so at its core, HashiCorp introduced licensing changes in 2023 after being acquired by IBM, impacting some commercial features.


# Installation & Set-up

## Pre-Requisites

### 1. Install Terraform

- Download Terraform from the official site: [https://www.terraform.io/downloads](https://www.terraform.io/downloads)
- A `.zip` file will be downloaded — extract it to a folder of your choice.
- Copy the path of the extracted folder (where `terraform.exe` is located).

#### Add Terraform to System PATH (Windows)

1. Open **"Edit the environment variables for your account"**
2. Under **User Variables**, double-click `Path`
3. Click **New** and paste the copied path
4. Click **OK** to close all dialogs

To verify the installation:

Open CMD and run
terraform --version

### 2. Install Visual Studio Code

- Download from: [https://code.visualstudio.com/](https://code.visualstudio.com/)
- Install extensions:
  - **HashiCorp Terraform**
  - **HashiCorp HCL**

---

## 🔐 AWS CLI Configuration

To allow Terraform to authenticate with AWS, install and configure the AWS CLI:

### Install AWS CLI:

- Download: [https://aws.amazon.com/cli/](https://aws.amazon.com/cli/)

### Configure AWS credentials:

```bash
aws configure
```

You’ll be prompted to enter:

- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Default region name** (e.g., `us-east-1`)
- **Default output format** (you can just press Enter to skip)

Terraform will use these credentials when interacting with AWS resources.

---

## Basic Terraform Commands

```bash
terraform init      # Initialize the required plugins from the Terraform registry
terraform plan      # Show the execution plan without making changes
terraform apply     # Apply the changes required to reach the desired state
terraform destroy   # Destroy the created infrastructure
```

---

## Terraform File Structure

| File               | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `provider.tf`       | Defines cloud provider details (e.g., AWS region, credentials)             |
| `main.tf`           | Main configuration file where resources (like EC2, S3) are declared        |
| `variables.tf`      | Declares input variables used across Terraform files                       |
| `terraform.tfvars`  | Supplies actual values to the declared variables                           |
| `output.tf`         | Defines outputs such as IP addresses, DNS names, etc.   
