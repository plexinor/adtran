#Azure rm resource to create a private endpoint on this azure database mysql flexible server.
resource "azurerm_private_endpoint" "flexiserver_private_endpoint" {
  count                         = length(var.azure_database_mysql_flexible_server_name)
  name                          = "${var.azure_database_mysql_flexible_server_name[count.index]}-pe"
  location                      = var.azure_database_mysql_flexible_server_pe_location[count.index] # Change this to the appropriate location
  resource_group_name           = var.azure_database_mysql_flexible_server_resource_group[count.index]
  subnet_id                     = data.azurerm_subnet.private_endpoint_subnet[count.index].id
  tags                          = var.tags
  custom_network_interface_name = "${var.azure_database_mysql_flexible_server_name[count.index]}-pe-nic"
  private_service_connection {
    name                           = "${var.azure_database_mysql_flexible_server_name[count.index]}-pe"
    is_manual_connection           = false
    private_connection_resource_id = resource.azurerm_mysql_flexible_server.mysql_flexible_server[count.index].id
    subresource_names              = ["mysqlServer"]
  }
  lifecycle {
    ignore_changes = [
      private_dns_zone_group
    ]
  }
  depends_on = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_database.database_name_with_server, azurerm_mysql_flexible_database.amc_database, azurerm_mysql_flexible_database.metastoredb_database, null_resource.hive_meta_store_tables]

}