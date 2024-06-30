resource "azurerm_storage_container" "ca_block" {
  for_each              = var.cas
  name                  = each.value.name
  storage_account_name  = each.value.storage_account_name
  container_access_type = each.value.container_access_type
}

