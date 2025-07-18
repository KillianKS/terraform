output "public_ip_address" {
  value = azurerm_public_ip.main.ip_address
}

output "storage_account_name" {
  value = azurerm_storage_account.static_files.name
}
