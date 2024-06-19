## Module for Hub VNET

module "hub_vnet" {
  source              = "../modules/vnet"
  name                = "hub_vnet"
  location            = module.network_rg.location
  resource_group_name = module.network_rg.name
  address_space       = ["10.10.0.0/16"]
  dns_servers         = ["168.63.129.16"]
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}