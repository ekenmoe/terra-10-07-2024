## https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/bastion_host

resource "azurerm_subnet" "example" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = data.azurerm_resource_group.rgvnet.name
  virtual_network_name = data.azurerm_virtual_network.existing_vnet.name
  address_prefixes     = ["10.10.2.0/27"]
}

resource "azurerm_public_ip" "example" {
  name                = format("%s-%s-aks-ip", var.tags["environment"], var.tags["project"])
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rgvnet.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "example" {
  name                = format("%s-%s-bastion", var.tags["environment"], var.tags["project"])
  location            = var.location
  resource_group_name = data.azurerm_resource_group.rgvnet.name

  ip_configuration {
    name                 = format("%s-%s-aks-ipconfig", var.tags["environment"], var.tags["project"])
    subnet_id            = azurerm_subnet.example.id
    public_ip_address_id = azurerm_public_ip.example.id
  }
}