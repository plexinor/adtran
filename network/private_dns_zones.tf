## Module for blob private dns zone
module "pdnsz_blob" {
  source              = "../modules/private_dns_zone"
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = module.dns_rg.name
  tags = {
    "Client"      = "Adtran"
    "Environment" = "Prod"
  }
}

## Module for key vault private dns zone
module "pdnsz_key_vault" {
  source              = "../modules/private_dns_zone"
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = module.dns_rg.name
  tags = {
    "Client"      = "Adtran"
    "Environment" = "Prod"
  }
}