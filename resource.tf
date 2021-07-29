resource "azurerm_resource_group" "user12rg" {
name = "user12rg"
location = "koreacentral"
tags = {
environment = "Terraform Demo"
}
}
