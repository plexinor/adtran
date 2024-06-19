# Output Key Vault Name
output "kv_name" {
  value       = join(", ", azurerm_key_vault.key_vault[*].name)
  description = "The name of the key vault"
}
