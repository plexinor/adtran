# Module to create Azure private endpoints
resource "azurerm_private_endpoint" "key_vault_private_endpoint" {
  name                          = "${var.key_vault_name}-kv-pe"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  subnet_id                     = var.subnet_id
  custom_network_interface_name = "${var.key_vault_name}-kv-pe-nic"
  tags                          = var.tags
  private_service_connection {
    name                           = "${var.key_vault_name}-kv-pe"
    private_connection_resource_id = azurerm_key_vault.key_vault.id
    is_manual_connection           = false
    subresource_names              = ["vault"]
  }
  private_dns_zone_group {
    name                 = "${var.key_vault_name}-kv-pe-dns-zone-group"
    private_dns_zone_ids = [var.private_dns_zone_ids]
  }

  # lifecycle {
  #   ignore_changes = [
  #     private_dns_zone_group
  #   ]
  # }
}