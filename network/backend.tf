## Backend to store terrform state file for dev test environment
terraform {
  backend "azurerm" {
    resource_group_name  = "platform_resources_rg"
    storage_account_name = "platformterraformsa01"
    container_name       = "terraform-container"
    key                  = "network/terraform.tfstate"
  }
}