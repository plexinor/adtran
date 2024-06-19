## Module for Remote network gateway info
module "on_prem_network_gateway" {
  source                      = "../modules/vpn/local_network_gateway"
  on_prem_gateway_name        = "juniper_network_gateway"
  resource_group_name         = module.network_rg.name
  location                    = module.network_rg.location
  on_prem_gateway_ip_address  = "212.134.79.226"
  on_prem_address_space       = ["192.168.0.0/24"]
}