output "resource_group" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.resource_group.name
}

output "resource_group_location" {
  description = "Resource Group Location"
  value       = azurerm_resource_group.resource_group.location
}

output "resource_group_id" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.resource_group.id
}

output "storage_account" {
  description = "Storage Account Name"
  value       = azurerm_storage_account.storage_account.name
}

output "storage_account_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.resource_group.id
}