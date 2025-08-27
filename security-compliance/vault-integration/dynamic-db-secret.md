# Example of Dynamic Secret Vault Concept
- Enable database secret engine
- Configure role to issue temporary credentials (short TTL)
- Application uses K8s ServiceAccount -> JWT login to Vault -> fetch creds