## Module for Internal nsg in HUB VNET
module "internal_nsg" {
  source              = "../modules/nsg"
  name                = "internal_nsg"
  location            = module.network_rg.location
  resource_group_name = module.network_rg.name
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}

## Module for External nsg in HUB VNET
module "external_nsg" {
  source              = "../modules/nsg"
  name                = "external_nsg"
  location            = module.network_rg.location
  resource_group_name = module.network_rg.name
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}


