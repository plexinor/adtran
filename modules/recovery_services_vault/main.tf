# Module to create Azure Recovery Services Vault
resource "azurerm_recovery_services_vault" "recovery-services-vault" {
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  sku                          = var.sku
  storage_mode_type            = var.storage_mode_type
  cross_region_restore_enabled = var.cross_region_restore_enabled
  soft_delete_enabled          = var.soft_delete_enabled
  tags                         = var.tags
}