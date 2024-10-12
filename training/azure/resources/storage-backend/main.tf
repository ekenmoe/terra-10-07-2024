locals {
  location = "eastus"

  tags = {
    "id"             = "2420"
    "owner"          = "WT3E"
    "environment"    = "dev"
    "project"        = "Morphus"
    "manage_by"      = "Terraform"
    "cloud_provider" = "azure"
  }

  subscription_id = "2a11fa60-066d-4501-8876-da86858310c2"
}

module "resource_group" {
  source          = "../../modules/storage-backend"
  location        = local.location
  tags            = local.tags
  subscription_id = local.subscription_id

}
