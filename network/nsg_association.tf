## Module for Internal nsg in HUB VNET
module "internal_nsg_association" {
  source                    = "../modules/subnet_nsg_association"
  subnet_id                 = module.internal_subnet.id
  network_security_group_id = module.internal_nsg.id
}

## Module for External nsg in HUB VNET
module "external_nsg_association" {
  source                    = "../modules/subnet_nsg_association"
  subnet_id                 = module.external_subnet.id
  network_security_group_id = module.external_nsg.id
}

