resource "azurerm_storage_account" "mysa" {
  name                     = format("%s%sstbackend", var.tags["id"], var.tags["environment"])
  resource_group_name      = data.azurerm_resource_group.storage_backend.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  blob_properties {
    versioning_enabled = true
  }
  tags = var.tags
}