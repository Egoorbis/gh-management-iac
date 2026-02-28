# 🚀 GitHub Repository Vending Machine

This repository automates the complete provisioning of GitHub repositories with Azure integration. Using Terraform, it orchestrates both GitHub repository creation and Azure service principal setup with federated OIDC credentials for GitHub Actions—all in one go.

## 🏗️ Architecture
- **Tooling:** Terraform (HCL)
- **GitHub:** Terraform GitHub Provider with GitHub Apps
- **Azure:** Entra ID for service principals, OIDC federation and Azure RM for role assignments
- **Security:** Automated branch protections, secret scanning, vulnerability alerts, and keyless GitHub Actions authentication

## 🛠️ How it Works
The vending machine automates a two-step process:

1. **Entra SPN Module**: Creates an Azure service principal with federated identity credentials for GitHub Actions OIDC authentication. 
   - Enables keyless authentication from GitHub Actions
   - Automatically configured for `main` branch deployments
   - Role assignments for Azure subscription access

2. **Repository Module**: Provisions a fully-configured GitHub repository
   - Enforces `main` branch protection (no direct pushes, requires PR)
   - Enables secret scanning & vulnerability alerts
   - Auto-injects Azure credentials as GitHub Actions secrets
   - Configures backend state storage for Terraform deployments

3. **Projects**: Define new repositories as module instances in `/projects/main.tf`

Simply add a new module block, run `terraform apply`, and get a fully-secured, Azure-integrated repository!

## 📂 Structure
- `/modules/entra-spn`: Creates Azure Entra service principals with OIDC federation
- `/modules/repository`: Provisions GitHub repositories with security & Azure integration
- `/projects`: Live repository configurations (instantiate modules here)


