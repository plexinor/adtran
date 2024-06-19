resource "azurerm_key_vault" "key_vault" {
  name                            = var.key_vault_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  enabled_for_disk_encryption     = var.enabled_for_disk_encryption
  tenant_id                       = var.tenant_id
  soft_delete_retention_days      = var.soft_delete_retention_days
  purge_protection_enabled        = var.purge_protection_enabled
  public_network_access_enabled   = var.public_network_access_enabled
  enable_rbac_authorization       = var.enable_rbac_authorization
  sku_name                        = var.sku_name
  enabled_for_deployment          = var.enabled_for_deployment
  enabled_for_template_deployment = var.enabled_for_template_deployment
  tags                            = var.tags

  network_acls {
    bypass         = var.bypass
    default_action = var.default_action
    # ip_rules                   = var.ip_rules
    # virtual_network_subnet_ids = var.virtual_network_subnet_ids
  }
}