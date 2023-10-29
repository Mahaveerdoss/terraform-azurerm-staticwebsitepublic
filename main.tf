provider "azurerm" {
  features {

  }
}

resource "random_string" "random" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}

resource "azurerm_resource_group" "resource_group" {
  name     = local.rg_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                = local.sa_name
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location

  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind

  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }
}