# DevOps & Cloud Infra Showcase 🚀

![CI/CD](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions%20%7C%20GitLab%20CI%20%7C%20Jenkins-blue?logo=githubactions&logoColor=white)
![GitOps](https://img.shields.io/badge/GitOps-ArgoCD%20%7C%20Kustomize-orange?logo=argo&logoColor=white)
![Cloud](https://img.shields.io/badge/Multi--Cloud-GCP%20%7C%20On--Prem-lightgrey?logo=googlecloud&logoColor=white)
![Observability](https://img.shields.io/badge/Observability-Prometheus%20%7C%20Grafana%20%7C%20ELK-success?logo=grafana&logoColor=white)
![Security](https://img.shields.io/badge/Security-OPA%20%7C%20Vault%20%7C%20Trivy-red?logo=vault&logoColor=white)
![FinOps](https://img.shields.io/badge/FinOps-Kubecost-yellow?logo=money&logoColor=white)
![DR](https://img.shields.io/badge/DR-Velero-blue?logo=kubernetes&logoColor=white)


This repository is a **comprehensive DevOps/Cloud Engineering showcase**, demonstrating advanced, production-grade practices across **multi-cloud environments, GitOps, CI/CD, observability, security, compliance, cost optimization, and disaster recovery**.

👉 Full details below ⬇️

## 📂 Repository Structure
```bash
devops-cloud-infra-showcase/
├── app/                        # Demo application (Flask + Gunicorn + Dockerfile)
├── infra-as-code/
│   ├── terraform-gcp/          # GKE provisioning via Terraform
│   └── ansible-onprem/         # On-prem Kubernetes (k3s) setup with Ansible
├── k8s-gitops/                 # GitOps deployment (Kustomize + ArgoCD)
├── cicd-enterprise/
│   ├── github-actions/         # Blue-Green deployment example
│   ├── gitlab-ci/              # Canary release pipeline
│   └── jenkins/                # Jenkins pipeline (build & GitOps update)
├── observability/
│   ├── prometheus-operator/    # Prometheus, Alert rules, ServiceMonitor
│   ├── grafana-dashboards/     # Custom Grafana dashboards
│   └── elk/                    # Elasticsearch + Kibana + Filebeat
├── security-compliance/
│   ├── opa-policies/           # Open Policy Agent (OPA/Gatekeeper) policies
│   ├── vault-integration/      # HashiCorp Vault integration with K8s
│   ├── sops/                   # Encrypted Kubernetes secrets with SOPS
│   └── trivy/                  # Container security scanning with Trivy
├── cost-optimization/
│   └── kubecost/               # FinOps with Kubecost
└── disaster-recovery/
    └── velero/                 # Backup & restore strategies with Velero
```

## 🌐 Multi-Cloud
- GCP (GKE, Cloud Storage, CloudSQL, Pub/Sub)
- On-Prem (K3s + MetalLB + NFS)

## 🔄 GitOps & CI/CD
- GitHub Actions (Blue-Green)
- GitLab CI (Canary)
- Jenkins (Declarative pipeline)
- ArgoCD (Automated deployment)

## 📊 Observability
- Prometheus + AlertManager
- Grafana Dashboards
- Elasticsearch + Kibana + Filebeat

## 🔐 Security & Compliance
- OPA/Gatekeeper (policy enforcement)
- Vault (secret injection)
- SOPS (encrypted manifests)
- Trivy (container scanning)

## 💰 FinOps
- Kubecost (cost transparency + optimization)

## 🛡️ Disaster Recovery
- Velero (backup/restore)
