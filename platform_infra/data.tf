## Define data for current user/service principal for this tennant configuration
data "azurerm_client_config" "current" {}

## Azure Subnet data block to fetch network information into terraform for private endpoints
data "azurerm_subnet" "private_endpoint_subnet" {
  name                 = "internal-subnet"
  virtual_network_name = "hub_vnet"
  resource_group_name  = "network_rg"
}

## Azure Private DNS Zone data block to fetch information into terraform for private endpoints
data "azurerm_private_dns_zone" "pdnsz_blob" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = "dns_rg"
}

## Azure Private DNS Zone data block to fetch information into terraform for private endpoints
data "azurerm_private_dns_zone" "pdnsz_key_vault" {
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = "dns_rg"
}