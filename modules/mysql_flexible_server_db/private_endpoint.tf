#Azure rm resource to create a private endpoint on this azure database mysql flexible server.
resource "azurerm_private_endpoint" "flexiserver_private_endpoint" {
  name                          = "${var.name}-pe"
  location                      = var.pe_location 
  resource_group_name           = var.resource_group
  subnet_id                     = var.subnet_id
  tags                          = var.tags
  custom_network_interface_name = "${var.name}-pe-nic"
  private_service_connection {
    name                           = "${var.name}-pe"
    is_manual_connection           = false
    private_connection_resource_id = resource.azurerm_mysql_flexible_server.mysql_flexible_server.id
    subresource_names              = ["mysqlServer"]
  }
  private_dns_zone_group {
    name                 = "${var.name}-mysql-pe-dns-zone-group"
    private_dns_zone_ids = [var.private_dns_zone_ids]
  }
  lifecycle {
    ignore_changes = [
      private_dns_zone_group
    ]
  }
  depends_on = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_database.radius_database]

}
## privatelink.mysql.database.azure.com