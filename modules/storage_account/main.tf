# Module to create Azure Storage Account
resource "azurerm_storage_account" "storage_account" {
  name                              = var.name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  account_tier                      = var.account_tier
  account_replication_type          = var.account_replication_type
  account_kind                      = var.account_kind
  is_hns_enabled                    = var.is_hns_enabled
  public_network_access_enabled     = var.public_network_access_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  allow_nested_items_to_be_public   = var.allow_nested_items_to_be_public
  tags                              = var.tags
  blob_properties {
    delete_retention_policy {
      days = var.delete_retention_policy_days
    }
    container_delete_retention_policy {
      days = var.container_delete_retention_policy_days
    }
  }
}
