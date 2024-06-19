#Azure rm resource to create azure database mysql flexible server
resource "azurerm_mysql_flexible_server" "mysql_flexible_server" {
  count                  = length(var.azure_database_mysql_flexible_server_name)
  name                   = var.azure_database_mysql_flexible_server_name[count.index]
  resource_group_name    = var.azure_database_mysql_flexible_server_resource_group[count.index]
  location               = var.azure_database_mysql_flexible_server_location[count.index]
  administrator_login    = data.azurerm_key_vault_secret.MYSQL_ADMIN_USER[count.index].value
  administrator_password = data.azurerm_key_vault_secret.MYSQL_USER_PASSWORD[count.index].value
  version                = var.azure_database_mysql_flexible_server_version[count.index]
  sku_name               = var.azure_database_mysql_flexible_server_sku_name[count.index]
  storage {
    size_gb            = var.azure_database_mysql_flexible_server_storage_size
    io_scaling_enabled = var.azure_database_mysql_flexible_server_io_scaling_enabled
    auto_grow_enabled  = var.azure_database_mysql_flexible_server_auto_grow_enabled
  }
  backup_retention_days        = var.azure_database_mysql_flexible_server_backup_retention_days
  zone                         = var.azure_database_mysql_flexible_server_zone
  tags                         = var.tags
  geo_redundant_backup_enabled = var.azure_database_mysql_flexible_server_geo_redundant_backup_enabled

}