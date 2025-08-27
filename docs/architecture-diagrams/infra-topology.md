<!-- Copyright (c) 2025 https://github.com/rasmabayu. All rights reserved. -->
## 🏗️ Infrastructure Topology

```mermaid
graph LR
    IDE[DevOps Engineer / IDE] --> Git[GitHub/GitLab]

    subgraph CI["CI/CD"]
        Jenkins[Jenkins]
        GitHubActions[GitHub Actions]
        GitLabCI[GitLab CI]
    end

    subgraph GitOps["GitOps"]
        ArgoCD[ArgoCD]
    end

    subgraph Clusters["Kubernetes Clusters"]
        GKE[GKE - GCP]
        OnPrem[On-Prem K8s]
    end

    subgraph Observability["Observability"]
        Prometheus[Prometheus]
        Grafana[Grafana]
        ELK[Elasticsearch + Kibana + Logstash]
        Loki[Loki]
    end

    subgraph Security["Security"]
        Vault[HashiCorp Vault]
        OPA[OPA Gatekeeper]
        Trivy[Trivy Scanner]
        SOPS[SOPS]
    end

    subgraph FinOps["Cost Management"]
        Kubecost[Kubecost]
    end

    subgraph DR["Disaster Recovery"]
        Velero[Velero]
    end

    Git --> CI
    CI --> GitOps
    GitOps --> GKE
    GitOps --> OnPrem

    GKE --> Observability
    GKE --> Security
    GKE --> FinOps
    GKE --> DR

    OnPrem --> Observability
    OnPrem --> Security
    OnPrem --> FinOps
    OnPrem --> DR
