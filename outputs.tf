output "hpc_caches" {
  description = "All hpc_cache resources"
  value       = azurerm_hpc_cache.hpc_caches
  sensitive   = true
}
output "hpc_caches_automatically_rotate_key_to_latest_enabled" {
  description = "List of automatically_rotate_key_to_latest_enabled values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.automatically_rotate_key_to_latest_enabled]
}
output "hpc_caches_cache_size_in_gb" {
  description = "List of cache_size_in_gb values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.cache_size_in_gb]
}
output "hpc_caches_default_access_policy" {
  description = "List of default_access_policy values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.default_access_policy]
}
output "hpc_caches_directory_active_directory" {
  description = "List of directory_active_directory values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.directory_active_directory]
  sensitive   = true
}
output "hpc_caches_directory_flat_file" {
  description = "List of directory_flat_file values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.directory_flat_file]
}
output "hpc_caches_directory_ldap" {
  description = "List of directory_ldap values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.directory_ldap]
  sensitive   = true
}
output "hpc_caches_dns" {
  description = "List of dns values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.dns]
}
output "hpc_caches_identity" {
  description = "List of identity values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.identity]
}
output "hpc_caches_key_vault_key_id" {
  description = "List of key_vault_key_id values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.key_vault_key_id]
}
output "hpc_caches_location" {
  description = "List of location values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.location]
}
output "hpc_caches_mount_addresses" {
  description = "List of mount_addresses values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.mount_addresses]
}
output "hpc_caches_mtu" {
  description = "List of mtu values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.mtu]
}
output "hpc_caches_name" {
  description = "List of name values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.name]
}
output "hpc_caches_ntp_server" {
  description = "List of ntp_server values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.ntp_server]
}
output "hpc_caches_resource_group_name" {
  description = "List of resource_group_name values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.resource_group_name]
}
output "hpc_caches_sku_name" {
  description = "List of sku_name values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.sku_name]
}
output "hpc_caches_subnet_id" {
  description = "List of subnet_id values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.subnet_id]
}
output "hpc_caches_tags" {
  description = "List of tags values across all hpc_caches"
  value       = [for k, v in azurerm_hpc_cache.hpc_caches : v.tags]
}

