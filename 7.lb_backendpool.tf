resource "azurerm_lb_backend_address_pool" "user12-bpepool" {
    resource_group_name = azurerm_resource_group.user12rg.name
    loadbalancer_id = azurerm_lb.user12-lb.id
    name = "user12-BackEndAddressPool"
}
