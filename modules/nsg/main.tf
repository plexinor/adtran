# module for network security group
resource "azurerm_network_security_group" "nsg" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  #security_rule       = var.security_rule
  tags = var.tags
}
