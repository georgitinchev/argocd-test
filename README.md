# Project Overview

## ✅ Project Highlights

### Tech Stack:
- Python Flask
- Docker
- Kubernetes (via Minikube)
- GitHub Actions for CI
- ArgoCD for CD
- Flake8 for linting

### Workflow:
1. Code pushed to `main` branch → GitHub Actions triggers CI pipeline:
   - Run Flake8 linting
   - Build Docker image
   - Push Docker image to DockerHub
   - Update Kubernetes manifest (`deploy.yaml`)
   - Commit the updated manifest back to the repo
2. ArgoCD watches the repository and applies the updated manifest
3. Deployment is triggered on the Kubernetes cluster
