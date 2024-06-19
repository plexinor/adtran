output "id" {
  value       = azurerm_linux_virtual_machine.vm-linux.id
  description = "The ID of the linux Virtual Machine"
}
output "private_ip_address" {
  value       = azurerm_linux_virtual_machine.vm-linux.private_ip_address
  description = "The Primary Private IP Address assigned to this Virtual Machine"
}
output "private_ip_addresses" {
  value       = azurerm_linux_virtual_machine.vm-linux.private_ip_addresses
  description = "A list of Private IP Addresses assigned to this Virtual Machine"
}
output "public_ip_address" {
  value       = azurerm_linux_virtual_machine.vm-linux.public_ip_address
  description = "The Primary Public IP Address assigned to this Virtual Machine"
}
output "public_ip_addresses" {
  value       = azurerm_linux_virtual_machine.vm-linux.public_ip_addresses
  description = "A list of Public IP Addresses assigned to this Virtual Machine"
}
output "virtual_machine_id" {
  value       = azurerm_linux_virtual_machine.vm-linux.virtual_machine_id
  description = "A 128-bit identifier which uniquely identifies this Virtual Machine"
}
output "principal_id" {
  value       = azurerm_linux_virtual_machine.vm-linux.identity[0].principal_id
  description = "The Principal ID associated with this Managed Service Identity"
}
