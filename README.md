# AWS EKS Cluster Automation using Terraform

## Project Overview

This project demonstrates the end-to-end provisioning of a production-ready Amazon Elastic Kubernetes Service (EKS) cluster using Terraform with a modular Infrastructure as Code (IaC) approach. The infrastructure includes a highly available Virtual Private Cloud (VPC), Identity and Access Management (IAM), networking components, security groups, and Amazon EKS Managed Node Groups.

The project follows AWS best practices by deploying worker nodes in private subnets, implementing reusable Terraform modules, and organizing infrastructure into maintainable components.

After provisioning the infrastructure, an NGINX application is deployed on the Kubernetes cluster to validate successful cluster creation and workload deployment.

---

## Architecture

```
                        Internet
                            │
                     Internet Gateway
                            │
                 Public Subnets (2 AZs)
                            │
                      NAT Gateway
                            │
                Private Subnets (2 AZs)
                            │
                    Amazon EKS Cluster
                            │
                 Managed Node Group (EC2)
                            │
                   Kubernetes Worker Nodes
                            │
                   Kubernetes Deployments
                            │
                     NGINX Application
```

---

## Technologies Used

- Terraform
- AWS EKS
- Amazon VPC
- Amazon EC2
- IAM
- Security Groups
- Kubernetes
- kubectl
- AWS CLI
- Git
- Visual Studio Code

---

## Features

- Modular Terraform Architecture
- Infrastructure as Code (IaC)
- Production-ready Amazon EKS Cluster
- Multi-AZ VPC Design
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- IAM Roles and Policies
- Security Groups
- EKS Managed Node Group
- Kubernetes Namespace
- Kubernetes Deployment
- ReplicaSet
- Pods
- ClusterIP Service
- Resource Tagging
- Reusable Terraform Modules

---

## Project Structure

```
AWS-EKS-Cluster-Automation-using-Terraform
│
├── modules
│   ├── eks
│   ├── iam
│   ├── node-group
│   ├── security-group
│   └── vpc
│
├── kubernetes
│   ├── namespace.yaml
│   ├── deployment.yaml
│   └── service.yaml
│
├── environments
├── scripts
│
├── backend.tf
├── data.tf
├── locals.tf
├── main.tf
├── outputs.tf
├── provider.tf
├── terraform.tfvars
├── variables.tf
├── versions.tf
├── .gitignore
└── README.md
```

---

## AWS Architecture Components

### Networking

- Amazon VPC
- Public Subnets
- Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Route Table Associations
- Elastic IP

### IAM

- Amazon EKS Cluster Role
- Amazon EKS Node Group Role
- Required IAM Policies

### Security

- Cluster Security Group
- Node Security Group
- Ingress Rules
- Egress Rules

### Amazon EKS

- EKS Control Plane
- Managed Node Group
- Private Worker Nodes

---

## Kubernetes Resources

- Namespace
- Deployment
- ReplicaSet
- Pods
- ClusterIP Service

---

## Prerequisites

Install the following tools before running this project:

- Terraform
- AWS CLI
- kubectl
- Git
- Visual Studio Code

Configure AWS CLI:

```bash
aws configure
```

---

## Deployment Steps

### Clone Repository

```bash
git clone <repository-url>
```

---

### Initialize Terraform

```bash
terraform init
```

---

### Validate Configuration

```bash
terraform validate
```

---

### Format Terraform Files

```bash
terraform fmt -recursive
```

---

### Review Infrastructure Changes

```bash
terraform plan
```

---

### Deploy Infrastructure

```bash
terraform apply
```

---

### Configure kubectl

```bash
aws eks update-kubeconfig \
--region us-east-1 \
--name terraform-eks-dev-cluster
```

---

### Verify Cluster

```bash
kubectl get nodes
```

---

### Deploy Kubernetes Resources

```bash
kubectl apply -f kubernetes/
```

---

### Verify Deployment

```bash
kubectl get all -n dev
```

---

## Terraform Modules

| Module | Description |
|----------|------------|
| VPC | Creates VPC, Subnets, IGW, NAT Gateway and Route Tables |
| IAM | Creates IAM Roles and Policy Attachments |
| Security Group | Creates Cluster and Worker Node Security Groups |
| EKS | Creates Amazon EKS Control Plane |
| Node Group | Creates EKS Managed Node Group |

---

## Terraform Commands

```bash
terraform init

terraform validate

terraform fmt

terraform plan

terraform apply

terraform destroy
```

---

## Kubernetes Commands

```bash
kubectl get nodes

kubectl get namespaces

kubectl get deployments -A

kubectl get pods -A

kubectl get services -A

kubectl describe deployment nginx-deployment -n dev

kubectl logs <pod-name> -n dev
```

---

## Learning Outcomes

Through this project, I gained practical experience in:

- Infrastructure as Code using Terraform
- Modular Terraform Project Structure
- Amazon VPC Design
- IAM Roles and Policies
- Amazon EKS Cluster Provisioning
- Kubernetes Cluster Administration
- Kubernetes Deployments
- Kubernetes Services
- kubectl Operations
- AWS Networking
- Resource Tagging
- Infrastructure Automation

---

## Project Highlights

- Designed and provisioned a production-ready Amazon EKS cluster using Terraform.
- Built a highly available AWS infrastructure across multiple Availability Zones.
- Implemented modular Infrastructure as Code for improved maintainability and reusability.
- Automated cloud resource provisioning using Terraform.
- Deployed an NGINX application on Kubernetes to validate successful cluster provisioning.
- Followed AWS and Kubernetes best practices throughout the implementation.

---

## Author

**Shreeya Mangesh Maliye**

---