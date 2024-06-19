module "key_vault" {
  source                          = "../modules/key_vault"
  key_vault_name                  = "platformterraformkv01"
  location                        = module.platform_resources_rg.location
  resource_group_name             = module.platform_resources_rg.name
  enabled_for_disk_encryption     = "true"
  tenant_id                       = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days      = "7"
  purge_protection_enabled        = "true"
  public_network_access_enabled   = "true"
  enable_rbac_authorization       = "true"
  sku_name                        = "standard"
  enabled_for_deployment          = "true"
  enabled_for_template_deployment = "true"
  bypass                          = "AzureServices"
  default_action                  = "Allow"
  subnet_id                       = data.azurerm_subnet.private_endpoint_subnet.id
  private_dns_zone_ids = data.azurerm_private_dns_zone.pdnsz_key_vault.id
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}