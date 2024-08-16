## Module for Internal subnet in HUB VNET
module "internal_subnet" {
  source               = "../modules/subnet"
  name                 = "internal_subnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.hub_vnet.name
  address_prefixes     = ["10.10.1.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}

## Module for External subnet in HUB VNET
module "external_subnet" {
  source               = "../modules/subnet"
  name                 = "external_subnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.hub_vnet.name
  address_prefixes     = ["10.10.2.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}

## Module for VPN Gateway subnet in HUB VNET
module "vpn_gateway_subnet" {
  source               = "../modules/subnet"
  name                 = "GatewaySubnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.hub_vnet.name
  address_prefixes     = ["10.10.3.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}


############################################################################################################


## Module for Internal subnet in HUB VNET
module "new_internal_subnet" {
  source               = "../modules/subnet"
  name                 = "internal_subnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.new_hub_vnet.name
  address_prefixes     = ["172.16.1.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}

## Module for External subnet in HUB VNET
module "new_external_subnet" {
  source               = "../modules/subnet"
  name                 = "external_subnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.new_hub_vnet.name
  address_prefixes     = ["172.16.2.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}

## Module for VPN Gateway subnet in HUB VNET
module "new_vpn_gateway_subnet" {
  source               = "../modules/subnet"
  name                 = "GatewaySubnet"
  resource_group_name  = module.network_rg.name
  virtual_network_name = module.new_hub_vnet.name
  address_prefixes     = ["172.16.0.0/24"]
  #   private_endpoint_network_policies             = "true"
  #   private_link_service_network_policies_enabled = "true"
  #   service_endpoints                             = [""]
}