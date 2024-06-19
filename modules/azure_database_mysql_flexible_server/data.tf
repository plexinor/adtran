## Azure key vault data block to fetch key vault information into terraform from node key vault
data "azurerm_key_vault" "node_key_vault" {
  count               = length(var.azure_database_mysql_flexible_server_node_kv_name)
  name                = var.azure_database_mysql_flexible_server_node_kv_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_node_kv_rg_name[count.index]
}

## Azure Key Vault secret data block to fetch MYSQL-ADMIN-USER value information from node keyvault
data "azurerm_key_vault_secret" "MYSQL_ADMIN_USER" {
  count        = length(var.azure_database_mysql_flexible_server_node_kv_name)
  name         = "metastore-username"
  key_vault_id = data.azurerm_key_vault.node_key_vault[count.index].id
}
#
## Azure Key Vault secret data block to fetch DATAHUB-SQLDB-SECRET value information from node keyvault into terraform
data "azurerm_key_vault_secret" "MYSQL_USER_PASSWORD" {
  count        = length(var.azure_database_mysql_flexible_server_node_kv_name)
  name         = "DATAHUB-SQLDB-SECRET"
  key_vault_id = data.azurerm_key_vault.node_key_vault[count.index].id

}

## Azure Key Vault secret data block to fetch mysql-amc-db-user-name value information from node keyvault into terraform
data "azurerm_key_vault_secret" "AMC_DB_USERNAME" {
  count        = length(var.azure_database_mysql_flexible_server_node_kv_name)
  name         = "mysql-amc-db-user-name"
  key_vault_id = data.azurerm_key_vault.node_key_vault[count.index].id

}

## Azure Key Vault secret data block to fetch mysql-amc-db-password value information from node keyvault into terraform
data "azurerm_key_vault_secret" "AMC_DB_PASSWORD" {
  count        = length(var.azure_database_mysql_flexible_server_node_kv_name)
  name         = "mysql-amc-db-password"
  key_vault_id = data.azurerm_key_vault.node_key_vault[count.index].id

}

## Storage account data block to fetch diagnostic storage account information into terraform
data "azurerm_storage_account" "ds_storage_account" {
  count               = length(var.azure_database_mysql_flexible_server_ds_storage_account_name)
  name                = var.azure_database_mysql_flexible_server_ds_storage_account_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_ds_sa_resource_group_name[count.index]
}

## Log Analytics Workspace data block to fetch diagnostic Log Analytics Workspace information into terraform
data "azurerm_log_analytics_workspace" "ds_log_analytics_workspace" {
  count               = length(var.azure_database_mysql_flexible_server_ds_law_name)
  name                = var.azure_database_mysql_flexible_server_ds_law_name[count.index]
  resource_group_name = var.azure_database_mysql_flexible_server_ds_law_resource_group_name[count.index]
}

## Azure Subnet data block to fetch network information into terraform for private endpoints
data "azurerm_subnet" "private_endpoint_subnet" {
  count                = length(var.azure_database_mysql_flexible_server_subnet_name)
  name                 = var.azure_database_mysql_flexible_server_subnet_name[count.index]
  virtual_network_name = var.azure_database_mysql_flexible_server_vnet_name[count.index]
  resource_group_name  = var.azure_database_mysql_flexible_server_vnet_resource_group_name[count.index]
}

