module "storage_account" {
  source                                 = "../modules/storage_account"
  name                                   = "platformterraformsa01"
  resource_group_name                    = module.platform_resources_rg.name
  location                               = module.platform_resources_rg.location
  account_tier                           = "Standard"
  account_replication_type               = "RAGRS"
  account_kind                           = "StorageV2"
  is_hns_enabled                         = "false"
  public_network_access_enabled          = "true"
  infrastructure_encryption_enabled      = "true"
  allow_nested_items_to_be_public        = "false"
  delete_retention_policy_days           = "90"
  container_delete_retention_policy_days = "90"
  subnet_id                              = data.azurerm_subnet.private_endpoint_subnet.id
  private_dns_zone_ids = data.azurerm_private_dns_zone.pdnsz_blob.id
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}