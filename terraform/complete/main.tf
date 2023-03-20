resource "azurerm_resource_group" "resourceGroup" {
  name     = var.resourceGroupName
  location = var.location
}

resource "azurerm_storage_account" "storageAccount" {
  name = "sa${random_id.storagename.hex}"

  resource_group_name = azurerm_resource_group.resourceGroup.name
  location            = azurerm_resource_group.resourceGroup.location

  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  for_each = { for containerName in var.containerNames : containerName => containerName }

  name                 = each.key
  storage_account_name = azurerm_storage_account.storageAccount.name
}

resource "random_id" "storagename" {
  byte_length = 8
}
