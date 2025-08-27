## 🌐 High-Level Architecture

```mermaid
graph TD
  Dev["Developer"] --> Git["GitHub / GitLab"]
  Git --> CI["CI/CD (Jenkins, GitHub Actions, GitLab CI)"]
  CI --> GitOps["GitOps (ArgoCD)"]
  GitOps --> K8s["Kubernetes Clusters (GCP + On-Prem)"]

  K8s --> Obs["Observability (Prometheus, Grafana, ELK, Loki)"]
  K8s --> Sec["Security (Vault, OPA, Trivy, SOPS)"]
  K8s --> Fin["FinOps (Kubecost)"]
  K8s --> DR["Disaster Recovery (Velero)"]
