# Module for Radius Linux VM
module "radius-vm-01" {
  source = "../modules/vm_linux"
  # VM nic config
  nic-name    = "radius-vm-01-nic"
  dns_servers = ["168.63.129.16"]
  #ip_configuration {
  ip_configuration_name         = "internal"
  subnet_id                     = module.internal_subnet.id
  private_ip_address_allocation = "Dynamic"
  # VM config
  name                = "radius-vm-01"
  resource_group_name = module.radius_rg.name
  location            = module.radius_rg.location
  size                = "Standard_D2s_v3"
  admin_username      = data.azurerm_key_vault_secret.admin_user.value
  admin_password      = data.azurerm_key_vault_secret.admin_password.value
  zone = "1"
  tags = {
    "Client"          = "Adtran"
    "Environment"     = "Prod"
    "Technical Owner" = "Kiran Kothandaraman"
  }

  #os_disk
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
  # Image
  publisher       = "RedHat"
  offer           = "RHEL"
  sku             = "810-gen2"
  image_version   = "latest"
  # Plan
  # plan_name      = "rhel"
  # product        = "rhel"
  # plan_publisher = "rhel"
}