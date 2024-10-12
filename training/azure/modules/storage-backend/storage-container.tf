resource "azurerm_storage_container" "example" {
  name                  = format("%s%sstcontainer", var.tags["id"], var.tags["environment"])
  storage_account_name  = azurerm_storage_account.mysa.name
  container_access_type = "private"
}