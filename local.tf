locals {
  rg_name = "${var.business_unit}-${var.environment}-${var.resource_group_name}"
  sa_name = "${var.business_unit}${var.environment}${var.storage_account_name}${random_string.random.id}"
}