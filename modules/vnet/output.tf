output "id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The id of the vnet"
}

output "name" {
  value       = azurerm_virtual_network.vnet.name
  description = "The name of the vnet"
}

output "address_space" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "The address space of the vnet"
}