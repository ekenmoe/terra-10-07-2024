data "azurerm_resource_group" "rgvnet" {
  name = format("%s-%s-%s-rg", var.tags["id"], var.tags["environment"], var.tags["project"])
}

# data "azurerm_resource_group" "rg" {
#   name = format("%s-%s-%s-storage-backend", var.tags["id"], var.tags["environment"], var.tags["project"])
# }

# data "azurerm_storage_account" "sa" {
#   name                = format("%s%sstbackend", var.tags["id"], var.tags["environment"])
#   resource_group_name = format("%s-%s-%s-storage-backend", var.tags["id"], var.tags["environment"], var.tags["project"])
# }


# data "azurerm_storage_container" "sc" {
#   name                 = format("%s%sstcontainer", var.tags["id"], var.tags["environment"])
#   storage_account_name = format("%s%sstbackend", var.tags["id"], var.tags["environment"])
# }
