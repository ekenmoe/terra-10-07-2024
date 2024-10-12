# terraform {
#   backend "azurerm" {
#     resource_group_name  = data.azurerm_resource_group.rg.name
#     storage_account_name = data.azurerm_storage_account.sa.name
#     container_name       = data.azurerm_storage_container.sc.name
#     key                  = "aks-vpc/terraform.tfstate"
#   }
# }


