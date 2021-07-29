resource "azurerm_virtual_network" "user12-net" {
    name = "user12-vnet"
    address_space = ["12.0.0.0/16"]
    location = azurerm_resource_group.user12rg.location
    resource_group_name = azurerm_resource_group.user12rg.name
}
