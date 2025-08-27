## 🔍 Detailed Architecture Flow

```mermaid
sequenceDiagram
    participant Dev as "Developer"
    participant Git as "Git Repo (GitHub/GitLab)"
    participant CI as "CI/CD (Jenkins, GitHub Actions, GitLab CI)"
    participant GitOps as "GitOps (ArgoCD)"
    participant K8s as "Kubernetes (GCP + On-Prem)"
    participant Sec as "Security (Vault, OPA, Trivy, SOPS, Falco)"
    participant Obs as "Observability (Prometheus, Grafana, ELK, Loki)"
    participant Fin as "FinOps (Kubecost)"
    participant DR as "DR (Velero)"

    Dev->>Git: Push code (app/infrastructure)
    Git->>CI: Trigger CI pipeline
    CI->>CI: Build, Test, Scan with Trivy
    CI->>GitOps: Push manifest to GitOps repo
    GitOps->>K8s: Sync & Deploy workloads
    K8s->>Sec: Apply policies, secrets mgmt, runtime security
    K8s->>Obs: Metrics + Logs + Traces
    Obs->>Dev: Alerts & Dashboards
    K8s->>Fin: Cost metrics with Kubecost
    K8s->>DR: Backup workloads with Velero
