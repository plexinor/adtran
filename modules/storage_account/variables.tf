###################################################################################
## main.tf variables ##
variable "name" {}
variable "resource_group_name" {}
variable "location" {}
variable "account_tier" {}
variable "account_replication_type" {}
variable "account_kind" {}
variable "is_hns_enabled" {}
variable "public_network_access_enabled" {}
variable "infrastructure_encryption_enabled" {}
variable "allow_nested_items_to_be_public" {}
variable "tags" {}
variable "delete_retention_policy_days" {}
variable "container_delete_retention_policy_days" {}
###################################################################################
###################################################################################
## private_endpoint.tf variables ##
variable "subnet_id" {}
variable "private_dns_zone_ids" {}
###################################################################################