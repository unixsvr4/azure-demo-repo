#!/usr/bin/env bash
set -euo pipefail
echo "This script will provision a local k3s cluster and install argocd for demo purposes."
echo "Requires: k3d, kubectl, yq, helm"
echo "1) Create k3d cluster"
k3d cluster create demo --api-port 6550 -p "80:80@loadbalancer" || true
echo "2) Install ArgoCD (namespaced)"
kubectl create namespace argocd || true
helm repo add argo https://argoproj.github.io/argo-helm || true
helm upgrade --install argocd argo/argo-cd -n argocd || true
echo "Done. Run: kubectl get pods -n argocd"
