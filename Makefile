dev:
    rm -rf .terraform
    terraform init -backend-config=envdev/main.tfvars
    terraform apply -auto=approve -var-file=env-dev/main.tfvars

prod:
    rm -rf .terraform
     terraform init -backend-config=envdev/main.tfvars
     terraform apply -auto=approve -var-file=env-prod/main.tfvars
