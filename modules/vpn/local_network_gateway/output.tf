output "id" {
  value       = azurerm_local_network_gateway.on_prem_gateway.id
  description = "The ID of the On prem gateway object created in Azure to reference in the VPN connection"
}
