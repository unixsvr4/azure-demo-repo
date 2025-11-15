# Azure DevOps Demo Repo

This is an open-source, automatable demo repository showcasing a full DevOps flow:
- GitHub Actions CI for a Python demo app
- Terraform + Terragrunt skeleton for infra provisioning
- ArgoCD GitOps folder for Kubernetes manifests / Helm
- Helm chart skeleton for the demo service
- Observability, security, and policy placeholders (Prometheus, Grafana, OPA/Kyverno, Trivy)

**Purpose**: drop this into a GitHub org, connect CI secrets, run the bootstrap scripts, and demonstrate a real-life cluster + GitOps pipeline to prospects.

## Contents

- `.github/workflows/` — CI, CD, Terraform pipelines
- `infra/terraform/` — modules / envs / terragrunt.hcl
- `apps/demo-service/` — Python FastAPI demo app, Dockerfile, Helm chart
- `k8s-gitops/` — ArgoCD app manifests and k8s resources
- `scripts/` — local dev, bootstrap helpers
- `security/` — policy scan config placeholders

## Quickstart (local demo / minimal)

1. Clone repo
2. Edit `infra/terraform/envs/dev/terragrunt.hcl` with your cloud account info
3. Run `./scripts/bootstrap-local.sh` to create a local K3s cluster OR follow cloud-specific README to provision EKS/GKE/AKS
4. Push image to GHCR (CI handles this) and update k8s manifests or let CD pipeline update ArgoCD apps
5. Open ArgoCD UI and sync apps

> This repo is intentionally instruction-rich and uses **Terragrunt** to organize Terraform.
