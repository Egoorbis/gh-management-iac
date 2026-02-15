# 🚀 GitHub Infrastructure as Code (IaC)

This repository serves as the **Central Governance Engine** for my GitHub portfolio. It uses Terraform and GitHub Apps to automate the lifecycle of my technical projects, ensuring every repository follows best practices from Day Zero.

## 🏗️ Architecture
- **Tooling:** Terraform (HCL)
- **Authentication:** GitHub App (Fine-grained permissions)
- **Security:** Automated Branch Protections, Secret Scanning, and Vulnerability Alerts.



## 🛠️ How it Works
New repositories are defined as modules within this project. By running the Terraform pipeline, I can:
1. Provision a new repository with a standardized description and topics.
2. Enforce **Branch Protection Rules** (No direct pushes to `main`).
3. Inject **GitHub Actions Secrets** (Azure/AWS Credentials) automatically.

## 📂 Structure
- `/modules/repository`: The reusable blueprint for all my project repos.
- `/projects`: The live configuration where repositories are instantiated.

---
*Developed with a Security-First mindset by egoorbis.*

