# Azure Terraform Network Foundation

A modular Terraform project that builds a reusable Azure network foundation using Terraform, GitHub Actions, and Azure OpenID Connect (OIDC) authentication. This repository serves as my personal learning project for Terraform, Azure, GitHub Actions, and Infrastructure as Code (IaC).

## Features

* Azure Resource Group
* Virtual Network
* Web Subnet
* Application Subnet
* Data Subnet
* Network Security Group (NSG)
* HTTPS Inbound Rule
* Subnet-to-NSG Association
* GitHub Actions CI Pipeline
* Azure OIDC Authentication

## Architecture

```mermaid
flowchart TD

RG["Resource Group"] --> VNET["Virtual Network"]

VNET --> WEB["Web Subnet"]
VNET --> APP["Application Subnet"]
VNET --> DATA["Data Subnet"]

NSG["Network Security Group"]
NSG --> ASSOC["NSG Association"]
ASSOC --> WEB


The NSG is currently associated with the Web Subnet.


```

## Repository Structure

```text
modules/
├── resource-group
├── virtual-network
├── subnet
├── network-security-group
└── subnet-nsg-association
```

## Local Usage

```powershell
terraform init
terraform validate
terraform plan
```

Optional deployment:

```powershell
terraform apply
terraform destroy
```

## CI/CD

GitHub Actions automatically runs:

* terraform fmt
* terraform init
* terraform validate
* terraform plan

## Skills Demonstrated

* Terraform Modules
* Variables and Outputs
* Azure Networking
* Network Security Groups
* GitHub Actions
* Azure OIDC Authentication
* Pull Request Workflow
* Infrastructure as Code (IaC)

## Cost Awareness

This project is primarily intended for learning Terraform and Azure networking concepts.

The recommended workflow is:

```powershell
terraform init
terraform validate
terraform plan
```

No Azure resources need to be deployed to understand the project structure and Terraform concepts.

If you choose to deploy the infrastructure:

* Review the Terraform plan before applying changes.
* Monitor Azure resource costs.
* Remove test resources after use.
* Avoid leaving resources running unnecessarily.

For most learning scenarios, running `terraform plan` is sufficient.

## Status

**Version:** v1.0

**Status:** Complete

Foundation project for future Azure Landing Zone and Infrastructure projects.
