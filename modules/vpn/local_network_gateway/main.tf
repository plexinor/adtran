resource "azurerm_local_network_gateway" "on_prem_gateway" {
  name                = var.on_prem_gateway_name
  resource_group_name = var.resource_group_name
  location            = var.location
  gateway_address     = var.on_prem_gateway_ip_address
  address_space       = var.on_prem_address_space
}