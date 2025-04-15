# 🌍 Terraform Project Setup Guide

## 🌐 What is Terraform?

Terraform is an **open-source Infrastructure as Code (IaC)** tool developed by **HashiCorp** in **2014**. It enables users to define and provision infrastructure through declarative configuration files. Terraform is written in **Go**, supports both **HCL (HashiCorp Configuration Language)** and **JSON**, and works seamlessly across **Windows**, **Linux**, and **macOS**.

Terraform can manage infrastructure for major cloud providers like **AWS**, **Azure**, **Google Cloud**, and many others. It remains open source at its core, though some commercial features are now licensed after **HashiCorp’s acquisition by IBM** in 2023.

---

## 📦 Pre-Requisites

### 1. Install Terraform

- Download Terraform from: [https://www.terraform.io/downloads](https://www.terraform.io/downloads)
- Extract the `.zip` file
- Copy the path where `terraform.exe` is located

#### Add Terraform to PATH (Windows)

1. Open **"Edit the environment variables for your account"**
2. Under **User Variables**, double-click `Path`
3. Click **New** and paste the path to the Terraform folder
4. Click **OK** to save

✅ Verify installation by running:
```bash
terraform --version
```

---

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

## 🛠️ Basic Terraform Commands

```bash
terraform init      # Initialize the required plugins from the Terraform registry
terraform plan      # Show the execution plan without making changes
terraform apply     # Apply the changes required to reach the desired state
terraform destroy   # Destroy the created infrastructure
```

---

## 📂 Terraform File Structure

| File               | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `provider.tf`       | Defines cloud provider details (e.g., AWS region, credentials)             |
| `main.tf`           | Main configuration file where resources (like EC2, S3) are declared        |
| `variables.tf`      | Declares input variables used across Terraform files                       |
| `terraform.tfvars`  | Supplies actual values to the declared variables                           |
| `output.tf`         | Defines outputs such as IP addresses, DNS names, etc.                      |

---

## ✅ You're all set to start building infrastructure with Terraform! 🚀
