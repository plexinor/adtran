## Module for blob private dns zone vnet link
module "pdnsz_blob_vnet_link" {
  source                = "../modules/private_dns_zone_vnet_link"
  name                  = "privatelink.blob.core.windows.net_to_hub_vnet_link"
  resource_group_name   = module.dns_rg.name
  private_dns_zone_name = "privatelink.blob.core.windows.net"
  virtual_network_id    = module.hub_vnet.id
  registration_enabled  = "false"
  tags = {
    "Client"      = "Adtran"
    "Environment" = "Prod"
  }
  depends_on = [module.pdnsz_blob]
}

## Module for key vault private dns zone vnet link
module "pdnsz_key_vault_vnet_link" {
  source                = "../modules/private_dns_zone_vnet_link"
  name                  = "privatelink.vaultcore.azure.net_to_hub_vnet_link"
  resource_group_name   = module.dns_rg.name
  private_dns_zone_name = "privatelink.vaultcore.azure.net"
  virtual_network_id    = module.hub_vnet.id
  registration_enabled  = "false"
  tags = {
    "Client"      = "Adtran"
    "Environment" = "Prod"
  }
  depends_on = [module.pdnsz_key_vault]
}

## Module for key vault private dns zone vnet link
module "pdnsz_mysql_db_vnet_link" {
  source                = "../modules/private_dns_zone_vnet_link"
  name                  = "privatelink.mysql.database.azure.com_to_hub_vnet_link"
  resource_group_name   = module.dns_rg.name
  private_dns_zone_name = "privatelink.mysql.database.azure.com"
  virtual_network_id    = module.hub_vnet.id
  registration_enabled  = "false"
  tags = {
    "Client"      = "Adtran"
    "Environment" = "Prod"
  }
  depends_on = [module.pdnsz_mysql_db]
}