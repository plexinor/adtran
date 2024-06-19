output "id" {
  value       = azurerm_private_dns_zone.private-dns-zone.id
  description = "The Private DNS Zone ID"
}

output "number_of_record_sets" {
  value       = azurerm_private_dns_zone.private-dns-zone.number_of_record_sets
  description = "The current number of record sets in this Private DNS zone"
}

output "max_number_of_record_sets" {
  value       = azurerm_private_dns_zone.private-dns-zone.max_number_of_record_sets
  description = "The maximum number of record sets that can be created in this Private DNS zone"
}

output "max_number_of_virtual_network_links" {
  value       = azurerm_private_dns_zone.private-dns-zone.max_number_of_virtual_network_links
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone"
}

output "max_number_of_virtual_network_links_with_registration" {
  value       = azurerm_private_dns_zone.private-dns-zone.max_number_of_virtual_network_links_with_registration
  description = "The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled"
}
