# module for subnet
resource "azurerm_subnet" "subnet" {
  name                                          = var.name
  resource_group_name                           = var.resource_group_name
  virtual_network_name                          = var.virtual_network_name
  address_prefixes                              = var.address_prefixes
  # private_endpoint_network_policies             = var.private_endpoint_network_policies # 
  # private_link_service_network_policies_enabled = var.private_link_service_network_policies_enabled
  # service_endpoints                             = var.service_endpoints
}
