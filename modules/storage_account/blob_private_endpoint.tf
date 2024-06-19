# Module to create Blob private endpoint for Storage Account
resource "azurerm_private_endpoint" "blob_private_endpoint" {
  name                          = "${var.name}-blob-pe"
  location                      = var.location
  resource_group_name           = var.resource_group_name
  subnet_id                     = var.subnet_id
  custom_network_interface_name = "${var.name}-blob-pe-nic"
  tags                          = var.tags
  private_service_connection {
    name                           = "${var.name}-blob-pe"
    private_connection_resource_id = azurerm_storage_account.storage_account.id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }
  private_dns_zone_group {
    name                 = "${var.name}-blob-pe-dns-zone-group"
    private_dns_zone_ids = [var.private_dns_zone_ids]
  }
  # lifecycle {
  #   ignore_changes = [
  #     private_dns_zone_group
  #   ]
  # }
}