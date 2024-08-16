## Azure key vault data block to fetch key vault information into terraform for terraform key vault
data "azurerm_key_vault" "platform_key_vault" {
  name                = "platformterraformkv01"
  resource_group_name = "platform_resources_rg"
}

## Azure Key Vault secret data block to fetch vpn_secret_key value information into terraform
data "azurerm_key_vault_secret" "vpn_secret_key" {
  name         = "vpn-secret-key"
  key_vault_id = data.azurerm_key_vault.platform_key_vault.id
}

## Azure Key Vault secret data block to fetch admin_user value information into terraform
data "azurerm_key_vault_secret" "admin_user" {
  name         = "admin-user"
  key_vault_id = data.azurerm_key_vault.platform_key_vault.id
}

## Azure Key Vault secret data block to fetch admin_password value information into terraform
data "azurerm_key_vault_secret" "admin_password" {
  name         = "admin-password"
  key_vault_id = data.azurerm_key_vault.platform_key_vault.id
}

## Azure Key Vault secret data block to fetch mysql-admin value information into terraform
data "azurerm_key_vault_secret" "mysql_admin" {
  name         = "mysql-admin"
  key_vault_id = data.azurerm_key_vault.platform_key_vault.id
}

## Azure Key Vault secret data block to fetch mysql-password value information into terraform
data "azurerm_key_vault_secret" "mysql_password" {
  name         = "mysql-password"
  key_vault_id = data.azurerm_key_vault.platform_key_vault.id
}

## Azure Private DNS Zone data block to fetch information into terraform for private endpoints
data "azurerm_private_dns_zone" "pdnsz_mysql_aerver_db" {
  name                = "privatelink.mysql.database.azure.com"
  resource_group_name = "dns_rg"
}