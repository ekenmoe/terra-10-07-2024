terraform {
  backend "azurerm" {
    resource_group_name  = "2420-dev-Morphus-storage-backend"
    storage_account_name = "2420devstbackend"
    container_name       = "2420devstcontainer"
    key                  = "bastion-host/terraform.tfstate"
  }
}


locals {
  location = "eastus"

  tags = {
    "id"             = "2420"
    "owner"          = "wt3e"
    "environment"    = "dev"
    "project"        = "morphus"
    "manage_by"      = "terraform"
    "cloud_provider" = "azure"
  }

  subscription_id = "2a11fa60-066d-4501-8876-da86858310c2"
}

module "resource_group" {
  source          = "../../modules/bastion-host"
  location        = local.location
  tags            = local.tags
  subscription_id = local.subscription_id

}