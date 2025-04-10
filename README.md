# DevOps Task 3: Provisioning with Terraform & Docker

This project demonstrates Infrastructure as Code (IaC) by spinning up a lightweight Nginx container using Terraform and Docker.

## What I Did

- Used the Docker provider in Terraform
- Pulled the `nginx:alpine` image
- Deployed the container on port `9090`
- Managed lifecycle with `terraform init`, `plan`, `apply`, and `destroy`

## How to Run It

```bash
terraform init
terraform plan
terraform apply
```

To tear it all down:

```bash
terraform destroy
```

## Output

> Screenshots/logs are in the `logs/` directory.
