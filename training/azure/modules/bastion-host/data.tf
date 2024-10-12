data "azurerm_resource_group" "rgvnet" {
  name = format("%s-%s-%s-rg", var.tags["id"], var.tags["environment"], var.tags["project"])
}

data "azurerm_virtual_network" "existing_vnet" {
  name                = format("%s-%s-%s-aks-net", var.tags["id"], var.tags["environment"], var.tags["project"])
  resource_group_name = data.azurerm_resource_group.rgvnet.name
}

# Retrieve existing Subnet
data "azurerm_subnet" "existing_subnet" {
  name                 = format("%s-%s-%s-aks-subnet", var.tags["id"], var.tags["environment"], var.tags["project"])
  virtual_network_name = data.azurerm_virtual_network.existing_vnet.name
  resource_group_name  = data.azurerm_resource_group.rgvnet.name
}








