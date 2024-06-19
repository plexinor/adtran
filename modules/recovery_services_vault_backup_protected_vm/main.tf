# Module to associate VM to Azure Recovery Services Vault and policy to enable VM backup
resource "azurerm_backup_protected_vm" "backup-protected-vm" {
  resource_group_name = var.resource_group_name
  recovery_vault_name = var.recovery_vault_name
  source_vm_id        = var.source_vm_id
  backup_policy_id    = var.backup_policy_id
}