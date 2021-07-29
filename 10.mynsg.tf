resource "azurerm_network_security_group" "mynsg" {
    name                = "myNetworkSecurityGroup"
    location            = azurerm_resource_group.user12rg.location
    resource_group_name = azurerm_resource_group.user12rg.name
    
    security_rule {
        name                       = "SSH1"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "169.56.0.0/16"
        destination_address_prefix = "*"
    }
    security_rule {
        name                       = "SSH2"
        priority                   = 1002
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "20.194.0.0/16"
        destination_address_prefix = "*"
    }
security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags = {
        environment = "Terraform Demo"
    }
}

