terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "61fbcac7-2f66-43f1-aca9-bfbab5b91195"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}
