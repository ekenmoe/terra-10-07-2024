terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }

  }

  # backend "azurerm" {
  #   resource_group_name  = data.azurerm_resource_group.rg.name
  #   storage_account_name = data.azurerm_storage_account.sa.name
  #   container_name       = data.azurerm_storage_container.sc.name
  #   key                  = "aks-vpc/terraform.tfstate"
  # }

}


provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

