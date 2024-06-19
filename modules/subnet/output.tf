output "id" {
  value       = azurerm_subnet.subnet.id
  description = "The id of the subnet"
}

output "name" {
  value       = azurerm_subnet.subnet.name
  description = "The name of the subnet"
}

output "virtual_network_name" {
  value       = azurerm_subnet.subnet.virtual_network_name
  description = "The virtual network name of the subnet"
}

output "address_prefixes" {
  value       = azurerm_subnet.subnet.address_prefixes
  description = "The address prefixes for the subnet"
}