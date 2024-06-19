# module for Azure linux VM with NIC
resource "azurerm_network_interface" "nic" {
  name                = var.nic-name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_servers         = var.dns_servers
  tags                = var.tags

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    #public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

# module for Azure linux VM
resource "azurerm_linux_virtual_machine" "vm-linux" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.size
  zone                = var.zone
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  disable_password_authentication = "false"
  tags = var.tags
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  # admin_ssh_key {
  #   username   = var.admin_username
  #   public_key = var.public_key
  # }
  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.image_version
  }
  # plan {
  #   name      = var.plan_name
  #   product   = var.product
  #   publisher = var.plan_publisher
  # }
  identity {
    type         = "SystemAssigned"
    #identity_ids = var.identity_ids
  }
}
