## Module for Public IP address
module "vpm_gateway_public_ip" {
source = "../modules/public_ip"
  name                = "vpn_gateway_public_ip"
  location            = module.network_rg.location
  resource_group_name = module.network_rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}