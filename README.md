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

```bash
terraform --version
