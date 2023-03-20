targetScope = 'resourceGroup'

param location string = resourceGroup().location

param storageAccountName string = 'sa${uniqueString(resourceGroup().id)}'
param storageAccountType string = 'Standard_LRS'

param containerNames array = []

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: storageAccountType
  }
  kind: 'StorageV2'
  properties: {}
}

resource blobServices 'Microsoft.Storage/storageAccounts/blobServices@2021-09-01' = {
  name: 'default'
  parent: storageAccount

  properties: {}
}

resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2019-06-01' = [for containerName in containerNames: {
  name: containerName
  parent: blobServices
}]
