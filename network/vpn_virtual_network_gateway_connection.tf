## Module for Virtual Network Gateway Connection
module "virtual_network_gateway_connection_1" {
  source                     = "../modules/vpn/virtual_network_gateway_connection"
  name                       = "on_prem_vpn_connection"
  resource_group_name        = module.network_rg.name
  location                   = module.network_rg.location
  virtual_network_gateway_id = module.virtual_network_gateway.id
  on_prem_network_gateway_id = module.on_prem_network_gateway.id
  shared_key                 = data.azurerm_key_vault_secret.vpn_secret_key.value
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}
