## Module for network resource group
module "network_rg" {
  source   = "../modules/resource_group"
  name     = "network_rg"
  location = "uksouth"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}

## Module for DNS resource group
module "dns_rg" {
  source   = "../modules/resource_group"
  name     = "dns_rg"
  location = "uksouth"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}

## Module for Radius Service resource group
module "radius_rg" {
  source   = "../modules/resource_group"
  name     = "radius_rg"
  location = "uksouth"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}