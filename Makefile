dev:
	rm -rf .temporary
	terraform init -backend-config=env-dev/main.tfvars
	terraform apply -auto-approve -var-file=env-dev/main.tfvars
