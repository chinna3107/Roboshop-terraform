dev:
	rm -rf .temporary
	terraform init -backend-config=env-dev/main.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars

prod:
	rm -rf .temporary
	terraform init -backend-config=env-prod/main.tfvars
	terraform apply -auto-approve -var-file=env-prod/main.tfvars