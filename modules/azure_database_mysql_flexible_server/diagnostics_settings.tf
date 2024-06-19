#Azure rm resource to create diagnostic setting for this azure database mysql flexible server
resource "azurerm_monitor_diagnostic_setting" "azure_database_mysql_flexible_server_logs" {
  count                      = length(var.azure_database_mysql_flexible_server_name)
  name                       = "diagnostic settings via terraform"
  target_resource_id         = azurerm_mysql_flexible_server.mysql_flexible_server[count.index].id
  storage_account_id         = data.azurerm_storage_account.ds_storage_account[count.index].id
  log_analytics_workspace_id = data.azurerm_log_analytics_workspace.ds_log_analytics_workspace[count.index].id

  enabled_log {
    category_group = "alllogs"
  }
  enabled_log {
    category_group = "audit"
  }
  metric {
    category = "AllMetrics"
  }
  lifecycle {
    ignore_changes = [
      metric
    ]
  }
  depends_on = [azurerm_mysql_flexible_server.mysql_flexible_server]
}