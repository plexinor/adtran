# Module to create Azure Recovery Services Vault backup policy for VMs
resource "azurerm_backup_policy_vm" "rsv-backup-policy-vm" {
  name                = var.name
  resource_group_name = var.resource_group_name
  recovery_vault_name = var.recovery_vault_name
  timezone            = var.timezone
  backup {
    frequency = var.frequency
    time      = var.time
  }
  retention_daily {
    count = var.retention_daily_count
  }
  retention_weekly {
    count    = var.retention_weekly_count
    weekdays = var.retention_weekly_weekdays
  }
  retention_monthly {
    count    = var.retention_monthly_count
    weekdays = var.retention_monthly_weekdays
    weeks    = var.retention_monthly_weeks
  }
  retention_yearly {
    count    = var.retention_yearly_count
    weekdays = var.retention_yearly_weekdays
    weeks    = var.retention_yearly_weeks
    months   = var.retention_yearly_months
  }
}