resource "azurerm_virtual_network" "example" {
  name                = var.azurerm_virtual_network["vnet1"].name
  address_space       = var.azurerm_virtual_network["vnet1"].address_space
  location            = var.azurerm_virtual_network["vnet1"].location
  resource_group_name = var.azurerm_virtual_network["vnet1"].resource_group_name
}

resource "azurerm_subnet" "example" {
  name                 = var.azurerm_virtual_network["vnet1"].subnet_name
  resource_group_name  = var.azurerm_virtual_network["vnet1"].resource_group_name
  virtual_network_name = var.azurerm_virtual_network["vnet1"].name
  address_prefixes     = var.azurerm_virtual_network["vnet1"].address_prefixes
}

resource "azurerm_network_interface" "example" {
  name                = var.azurerm_network_interface.name
  location            = var.azurerm_network_interface.location
  resource_group_name = var.azurerm_network_interface.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

