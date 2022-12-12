variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "resource_group_location" {
  description = "Resource Group location"
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

variable "storage_account_tier" {
  description = "Storage Account Tier"
  type        = string
}


variable "storage_account_replication_type" {
  description = "Storage Account Replication Type"
  type        = string
}

variable "storage_account_kind" {
  description = "Storage Account Kind"
  type        = string
}

variable "static_website_index_document" {
  description = "Static Website Index Document"
  type        = string
}

variable "static_website_error_404_document" {
  description = "Static Website Error 404 Document"
  type        = string
}

variable "common_tags" {
  description = "Common Tags"
  type        = map(string)
}