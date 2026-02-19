variable "rgs" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "azurerm_virtual_network" {
  type = object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  })
}
variable "azurerm_subnet" {
  type = object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  })
}

variable "azurerm_network_interface" {
  type = object({
    name                = string
    location            = string
    resource_group_name = string
  })
}

variable "ip_configuration" {
    type = object({
        name                          = string
        subnet_id                     = string
        private_ip_address_allocation = string
    })
  
}

variable "azurerm_linux_virtual_machine" {
  type = object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    network_interface_ids = list(string)
  })
}

variable "admin_ssh_key" {
    type = object({
        username   = string
        public_key = string
    })
}
variable "os_disk" {
    type = object({
        caching              = string
        storage_account_type = string
    })
}
variable "source_image_reference" {
    type = object({
        publisher = string
        offer     = string
        sku       = string
        version   = string
    })
}

variable "key_vault_name" {
    type = string
  
}

variable "secret_name" {
  
}

variable "value" {
  
}

variable "key_vault_id" {
  
}


variable "azurerm_key_vault_secret" {
  
}
