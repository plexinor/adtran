resource "azurerm_virtual_network_gateway_connection" "vpn_connection" {
  name                       = var.name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  virtual_network_gateway_id = var.virtual_network_gateway_id
  local_network_gateway_id   = var.on_prem_network_gateway_id
  type                       = "IPsec"
  shared_key                 = var.shared_key
  enable_bgp                 = false
  tags                       = var.tags
}