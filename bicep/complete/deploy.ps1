az login
az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

# Set variables
$location = "UK South"

# Deploy to resource group and provision resources
az deployment sub create `
    --location $location `
    --template-file "main.bicep" `
    --parameters "parameters.json"
