output "id" {
  value       = azurerm_private_dns_a_record.private-dns-a-record.id
  description = "The Private DNS A Record ID"
}
output "fqdn" {
  value       = azurerm_private_dns_a_record.private-dns-a-record.fqdn
  description = "The FQDN of the DNS A Record"
}
