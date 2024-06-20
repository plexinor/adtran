# The out put of azure database mysql flexible servername with fqdn will display
output "azure_database_mysql_flexible_server_name" {
  value       = azurerm_mysql_flexible_server.mysql_flexible_server.fqdn
  description = "The name of the flexible server instance"
}