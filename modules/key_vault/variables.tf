###################################################################################
## main.tf variables ##
variable "key_vault_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "enabled_for_disk_encryption" {}
variable "tenant_id" {}
variable "soft_delete_retention_days" {}
variable "purge_protection_enabled" {}
variable "public_network_access_enabled" {}
variable "enable_rbac_authorization" {}
variable "sku_name" {}
variable "enabled_for_deployment" {}
variable "enabled_for_template_deployment" {}
variable "tags" {}
variable "bypass" {}
variable "default_action" {}
###################################################################################
###################################################################################
## private_endpoint.tf variables ##
variable "subnet_id" {}
variable "private_dns_zone_ids" {}
###################################################################################