# Az-Platform-Engineer-Project

This repository contains a modular, production-ready **Azure Platform Engineering solution** built with Terraform and automated via GitHub Actions. The project demonstrates how to provision secure, scalable, and reusable infrastructure components across multiple environments (e.g., `dev`, `test`) using Infrastructure as Code (IaC) best practices.

## 🚀 Overview

The platform incorporates cloud-native Azure services while focusing on **security, scalability, and automation**. GitHub Actions handles CI/CD pipelines with dynamic inputs to allow environment-specific deployments, while security scanning tools like `tfsec` and `trivy` ensure code quality and compliance.

### ✅ Key Features

- **Networking**
  - Virtual Network (VNet)
  - Private Endpoints
  - VNet Integration for App Services
- **Identity & Security**
  - Azure Managed Identities
  - Role-Based Access Control (RBAC)
  - Azure Key Vault for secrets
- **IaC & Automation**
  - Modular **Terraform** architecture
  - CI/CD via **GitHub Actions**
  - Security Scanning: `tfsec`, `trivy`
- **Compute & Scalability**
  - Azure Web App
  - Azure Function App
- **Storage & Data**
  - Azure Storage Account (Blob, Queue, etc.)
  - Azure SQL Database (with private endpoint)

## 🔐 Security Highlights

- **Least Privilege RBAC**: Scoped access to resources per environment.
- **Private Endpoints**: Ensures all resources are privately networked—no public exposure.
- **CI/CD Security Scanning**: Enforces policy-as-code with tools like `tfsec` and container vulnerability scanning via `trivy`.

## 📁 Repository Structure


## ⚙️ Technologies Used

- **Cloud**: Azure
- **IaC**: Terraform
- **CI/CD**: GitHub Actions
- **Security Tools**: tfsec, trivy
- **Languages**: HCL, YAML


