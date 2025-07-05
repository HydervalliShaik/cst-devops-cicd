# Introduction
Hi, this is Hydervalli Shaik and it's my walkthrough of the DevOps CI/CD and Infrastructure project.

---

# Project Structure Overview
- In the root directory, you’ll see folders like `app`, `docker`, `.github`, `k8s`, `terraform`, and `monitoring`.
- The `app/` folder contains a React frontend application.
- The `docker/` folder includes a Dockerfile that builds the React app and serves it via Nginx.

---

# CI/CD Pipeline
- Inside `.github/workflows/ci-cd.yaml`, I’ve set up a GitHub Actions workflow.
- It installs dependencies, builds the React app, creates a Docker image, and saves the image as an artifact.
- This simulates a CI/CD process even if we don’t push to a real Docker registry.

---

# Kubernetes Deployment
- The `k8s/` folder contains Kubernetes manifests:
  - `deployment.yaml` for deploying the Docker container
  - `service.yaml` for exposing it internally
  - `ingress.yaml` for external access via a hostname like `frontend.local`

---

# Infrastructure as Code (Terraform)
- The `terraform/` directory contains files like `main.tf`, `variables.tf`, and `outputs.tf`.
- It’s designed to provision an EC2 instance on AWS where the app would be hosted.
- `backend.tf` uses a local backend to simulate Terraform state.

---

# Monitoring Setup
- The `monitoring/` folder has Prometheus and Grafana configuration files.
- Prometheus scrapes metrics from the frontend service.
- Grafana visualizes uptime metrics in a basic dashboard JSON.

---

# Deployment Script
- A shell script `scripts/deploy.sh` is available to apply the Kubernetes manifests manually.

---

# Secrets Handling
- The `secrets/README.md` explains that secrets would be handled by Vault or AWS SSM if we had cloud access.

---

# Final Notes
- This setup is designed for local validation and demonstration without requiring full cloud access.
- You can open this repo in GitHub, read the CI/CD config, and understand how Docker, Kubernetes, and Terraform integrate together.

Thankyou!