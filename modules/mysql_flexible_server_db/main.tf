#Azure rm resource to create azure database mysql flexible server
resource "azurerm_mysql_flexible_server" "mysql_flexible_server" {
  name                   = var.name
  resource_group_name    = var.resource_group
  location               = var.location
  # administrator_login    = data.azurerm_key_vault_secret.mysql_admin.value
  # administrator_password = data.azurerm_key_vault_secret.mysql_password.value
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  version                = var.mysql_version
  sku_name               = var.sku_name
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled
  zone = var.zone
  high_availability {
    mode                      = var.ha_mode
    standby_availability_zone = var.standby_availability_zone
  }
  storage {
    size_gb            = var.storage_size
    io_scaling_enabled = var.io_scaling_enabled
    auto_grow_enabled  = var.auto_grow_enabled
  }
  tags                         = var.tags
}

## Database
resource "azurerm_mysql_flexible_database" "radius_database" {
  name                = var.database_name
  resource_group_name = var.resource_group
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server, azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_fire_wall_rules]
}

#azure rm resource to create firewall rule which allow all azure services to this azure database mysql flexible server
resource "azurerm_mysql_flexible_server_firewall_rule" "mysql_flexible_server_fire_wall_rules" {
  name                = "mysql_server_firewall_rule"
  resource_group_name = var.resource_group
  server_name         = azurerm_mysql_flexible_server.mysql_flexible_server.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
  depends_on          = [azurerm_mysql_flexible_server.mysql_flexible_server]
}