provider "azurerm" {
  features {

  }
}

resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
  numeric = false
}

resource "azurerm_resource_group" "resource_group" {
  name     = "${var.resource_group_name}-${random_string.random.id}"
  location = var.resource_group_location
  tags     = var.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.storage_account_name}${random_string.random.id}"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind             = var.storage_account_kind
  static_website {
    index_document     = var.static_website_index_document
    error_404_document = var.static_website_error_404_document
  }

  tags = var.common_tags

}