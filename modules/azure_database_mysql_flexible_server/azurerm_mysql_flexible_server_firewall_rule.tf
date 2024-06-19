#azure rm resource to create firewall rule which allow all azure services to this azure database mysql flexible server
resource "azurerm_mysql_flexible_server_firewall_rule" "mysql_flexible_server_fire_wall_rules" {
  count               = length(var.azure_database_mysql_flexible_server_name)
  name                = "azure_database_mysql_flexible_server"
  resource_group_name = var.azure_database_mysql_flexible_server_resource_group[count.index]
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server]
}