resource "azurerm_resource_group" "resourceGroup" {
  location = "uksouth"
  name     = "rg-reverse-terraform"
}

resource "azurerm_storage_account" "storageAccount" {
  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = "uksouth"
  name                     = "sa9c86d34cd4692cf1"
  resource_group_name      = "rg-reverse-terraform"
}

resource "azurerm_storage_container" "containerAlpha" {
  name                 = "alpha"
  storage_account_name = "sa9c86d34cd4692cf1"
}

resource "azurerm_storage_container" "containerBravo" {
  name                 = "bravo"
  storage_account_name = "sa9c86d34cd4692cf1"
}

resource "azurerm_storage_container" "containerCharlie" {
  name                 = "charlie"
  storage_account_name = "sa9c86d34cd4692cf1"
}

resource "azurerm_storage_container" "containerDelta" {
  name                 = "delta"
  storage_account_name = "sa9c86d34cd4692cf1"
}
