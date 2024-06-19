# Module to create Azure Private DNS Zone
resource "azurerm_private_dns_zone" "private-dns-zone" {
  name                = var.name
  resource_group_name = var.resource_group_name
  tags                = var.tags
}