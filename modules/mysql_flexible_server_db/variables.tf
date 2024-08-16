
variable "name" {}
variable "resource_group" {}
variable "location" {}
variable "administrator_login" {}
variable "administrator_password" {}
variable "mysql_version" {}
variable "sku_name" {}
variable "backup_retention_days" {}
variable "geo_redundant_backup_enabled" {}
variable "storage_size" {}
variable "io_scaling_enabled" {}
variable "auto_grow_enabled" {}
variable "zone" {}
variable "ha_mode" {}
variable "standby_availability_zone" {}
variable "tags" {}
## Database
variable "database_name" {}

## Private Endpoint
variable "pe_location" {}
variable "subnet_id" {}
variable "private_dns_zone_ids" {}