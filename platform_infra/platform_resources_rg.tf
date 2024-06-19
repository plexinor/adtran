module "platform_resources_rg" {
  source   = "../modules/resource_group"
  name     = "platform_resources_rg"
  location = "uksouth"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
}