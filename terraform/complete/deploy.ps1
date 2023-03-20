az login
az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

# Deploy to resource group and provision resources
terraform init

terraform apply --var-file=parameters.tfvars