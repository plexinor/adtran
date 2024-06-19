#Azure rm null resource which will create hive meta store tables on metastoredb

resource "null_resource" "hive_meta_store_tables" {
  count = length(var.azure_database_mysql_flexible_server_name)
  # triggers = {
  # always_run = "${timestamp()}"
  #   }
  provisioner "local-exec" {
    working_dir = path.module
    interpreter = ["bash"]
    command     = "../../../scripts/bash/hive_meta_store/hive_meta_store_tables.sh"
    environment = {
      servername      = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].fqdn
      username        = data.azurerm_key_vault_secret.MYSQL_ADMIN_USER[count.index].value
      password        = data.azurerm_key_vault_secret.MYSQL_USER_PASSWORD[count.index].value
      metastoredb     = var.azure_database_mysql_flexible_server_meta_store_db_name[count.index]
      amc_db_user     = data.azurerm_key_vault_secret.AMC_DB_USERNAME[count.index].value
      amc_db_password = data.azurerm_key_vault_secret.AMC_DB_PASSWORD[count.index].value
      amc_db_name     = var.azure_database_mysql_flexible_server_amc_db_name[count.index]
    }
  }

  depends_on = [azurerm_mysql_flexible_database.amc_database, azurerm_mysql_flexible_database.metastoredb_database, azurerm_mysql_flexible_server_firewall_rule.mysql_flexible_server_fire_wall_rules]
}


