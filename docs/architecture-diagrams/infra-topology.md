# 🏗 Infrastructure Topology

graph LR
    subgraph DevOps[👨‍💻 DevOps Engineer]
        IDE[💻 IDE] --> Git[(GitHub/GitLab)]
    end

    subgraph CI[⚡ CI/CD]
        Jenkins[Jenkins]
        GitHubActions[GitHub Actions]
        GitLabCI[GitLab CI]
    end

    subgraph GitOps[🚀 GitOps]
        ArgoCD[ArgoCD]
    end

    subgraph Clusters[☸️ Kubernetes Clusters]
        GCP[GKE - GCP]
        OnPrem[K8s - On-Prem]
    end

    subgraph Observability[📊 Observability]
        Prometheus[Prometheus]
        Grafana[Grafana]
        ELK[Elasticsearch + Kibana + Logstash]
        Loki[Loki]
    end

    subgraph Security[🔒 Security]
        Vault[HashiCorp Vault]
        OPA[OPA Gatekeeper]
        Trivy[Trivy Scanner]
        SOPS[SOPS]
    end

    subgraph FinOps[💰 Cost Management]
        Kubecost[Kubecost]
    end

    subgraph DR[💾 Disaster Recovery]
        Velero[Velero]
    end

    Git --> CI
    CI --> GitOps
    GitOps --> GCP
    GitOps --> OnPrem

    GCP --> Observability
    GCP --> Security
    GCP --> FinOps
    GCP --> DR

    OnPrem --> Observability
    OnPrem --> Security
    OnPrem --> FinOps
    OnPrem --> DR
