output "id" {
  value       = azurerm_route_table.route-table.id
  description = "The Route Table ID"
}
output "subnets" {
  value       = azurerm_route_table.route-table.subnets
  description = "The collection of Subnets associated with this route table"
}
