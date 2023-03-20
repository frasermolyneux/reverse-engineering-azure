targetScope = 'subscription'

param location string = deployment().location
param resourceGroupName string

param storageAccountType string
param containerNames array = []

resource resourceGroup 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: resourceGroupName
  location: location

  properties: {}
}

module storageAccount 'modules/storage-account.bicep' = {
  name: '${deployment().name}sa'
  scope: resourceGroup

  params: {
    location: resourceGroup.location
    storageAccountName: 'sa${uniqueString(resourceGroup.id)}'
    storageAccountType: storageAccountType
    containerNames: containerNames
  }
}
