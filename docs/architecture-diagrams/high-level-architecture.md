# 🌐 High-Level Architecture

```mermaid
graph TD
    Dev[👨‍💻 Developer] -->|Code Push| Git[(GitHub/GitLab)]
    Git -->|Trigger Pipeline| CI[⚡ CI/CD (Jenkins/GitHub Actions/GitLab CI)]
    CI -->|Build & Test| GitOps[🚀 GitOps (ArgoCD)]
    GitOps -->|Sync Manifests| K8s[(☸️ Kubernetes Clusters - GCP + On-Prem)]

    K8s --> Obs[📊 Observability (Prometheus, Grafana, ELK, Loki)]
    K8s --> Sec[🔒 Security (Vault, OPA, Trivy, SOPS)]
    K8s --> Fin[💰 FinOps (Kubecost)]
    K8s --> DR[💾 DR (Velero)]
