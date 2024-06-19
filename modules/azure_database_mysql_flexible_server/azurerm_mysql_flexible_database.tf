#Azure rm resource to create azure database mysql flexible database with the same name as server name
resource "azurerm_mysql_flexible_database" "database_name_with_server" {
  count               = length(var.azure_database_mysql_flexible_server_name)
  name                = var.azure_database_mysql_flexible_server_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_resource_group[count.index]
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].name
  charset             = "utf8"
  collation           = "utf8_general_ci"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_fire_wall_rules]
}

#Azure rm resource to create azure database mysql flexible database with AMC name
resource "azurerm_mysql_flexible_database" "amc_database" {
  count               = length(var.azure_database_mysql_flexible_server_name)
  name                = var.azure_database_mysql_flexible_server_amc_db_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_resource_group[count.index]
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].name
  charset             = "utf8"
  collation           = "utf8_general_ci"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_fire_wall_rules]
}

#Azure rm resource to create azure database mysql flexible database with metastoredb name
resource "azurerm_mysql_flexible_database" "metastoredb_database" {
  count               = length(var.azure_database_mysql_flexible_server_name)
  name                = var.azure_database_mysql_flexible_server_meta_store_db_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_resource_group[count.index]
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].name
  charset             = "latin1"
  collation           = "latin1_swedish_ci"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_fire_wall_rules]
}



