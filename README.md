# Terraform Practice Azure

This repository contains a beginner Terraform project for creating and managing Azure infrastructure.

The purpose of this project is to learn the Terraform workflow using Azure:

- Write Terraform configuration
- Initialize providers
- Validate configuration
- Preview changes with plan
- Apply infrastructure changes
- View Terraform state
- Destroy infrastructure safely

## What This Project Creates

Currently, this project creates one Azure Resource Group.

The resource group is configured using variables and tags.

## Files

- `provider.tf` - Configures the Azure provider
- `main.tf` - Defines the Azure Resource Group
- `variables.tf` - Defines input variables
- `outputs.tf` - Defines useful Terraform outputs
- `.gitignore` - Prevents state files and local Terraform files from being committed

## Important Security Note

Terraform state files and `.tfvars` files are ignored because they can contain sensitive information in real projects.

## Terraform Commands Used

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform state list
terraform output
terraform destroy
