## Module for mysql radius database

module "mysql_flexible_server_db" {
  source                       = "../modules/mysql_flexible_server_db"
  name                         = "mysql-radius-server-01"
  resource_group               = module.radius_rg.name
  location                     = module.radius_rg.location
  administrator_login          = data.azurerm_key_vault_secret.mysql_admin.value
  administrator_password       = data.azurerm_key_vault_secret.mysql_password.value
  database_name                = "radius_db"
  mysql_version                = "5.7"
  sku_name                     = "GP_Standard_D2ds_v4"
  storage_size                 = "20"
  io_scaling_enabled           = "true"
  auto_grow_enabled            = "true"
  backup_retention_days        = "30"
  geo_redundant_backup_enabled = "true"
  zone = "1"
  ha_mode = "ZoneRedundant"
  standby_availability_zone = "2"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }
  ## Private Endpoint 
  pe_location = module.radius_rg.location
  subnet_id   = module.internal_subnet.id
  private_dns_zone_ids = data.azurerm_private_dns_zone.pdnsz_mysql_aerver_db.id
}