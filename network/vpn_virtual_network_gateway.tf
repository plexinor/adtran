## Module for Virtual network gateway
module "virtual_network_gateway" {
  source               = "../modules/virtual_network_gateway"
  name                 = "s2s_vpn_gateway"
  location             = module.network_rg.location
  resource_group_name  = module.network_rg.name
  type                 = "Vpn"
  vpn_type             = "RouteBased"
  active_active        = "false"
  enable_bgp           = "false"
  sku                  = "VpnGw1"
  public_ip_address_id = module.vpm_gateway_public_ip.id
  subnet_id            = module.vpn_gateway_subnet.id
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}