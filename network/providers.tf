# Configure the Required  Terraform Providers
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = ">=3.98.0"
      #version = "3.87.0"
    }
    azuread = {
      source = "hashicorp/azuread"
      #version = "2.44.0"
    }
    time = {
      source = "hashicorp/time"
      #version = "0.9.1"
    }
  }
}

# Configure Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

# Configure Azure AD provider
provider "azuread" {}

# Configure Azure AD provider
provider "time" {}


