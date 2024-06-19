output "id" {
  value       = azurerm_subnet_network_security_group_association.subnet-nsg-association.id
  description = "The id of the subnet"
}