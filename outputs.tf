output "hpc_caches_id" {
  description = "Map of id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.id if v.id != null && length(v.id) > 0 }
}
output "hpc_caches_automatically_rotate_key_to_latest_enabled" {
  description = "Map of automatically_rotate_key_to_latest_enabled values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.automatically_rotate_key_to_latest_enabled if v.automatically_rotate_key_to_latest_enabled != null }
}
output "hpc_caches_cache_size_in_gb" {
  description = "Map of cache_size_in_gb values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.cache_size_in_gb if v.cache_size_in_gb != null }
}
output "hpc_caches_default_access_policy" {
  description = "Map of default_access_policy values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.default_access_policy if v.default_access_policy != null && length(v.default_access_policy) > 0 }
}
output "hpc_caches_directory_active_directory" {
  description = "Map of directory_active_directory values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.directory_active_directory if v.directory_active_directory != null && length(v.directory_active_directory) > 0 }
  sensitive   = true
}
output "hpc_caches_directory_flat_file" {
  description = "Map of directory_flat_file values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.directory_flat_file if v.directory_flat_file != null && length(v.directory_flat_file) > 0 }
}
output "hpc_caches_directory_ldap" {
  description = "Map of directory_ldap values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.directory_ldap if v.directory_ldap != null && length(v.directory_ldap) > 0 }
  sensitive   = true
}
output "hpc_caches_dns" {
  description = "Map of dns values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.dns if v.dns != null && length(v.dns) > 0 }
}
output "hpc_caches_identity" {
  description = "Map of identity values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "hpc_caches_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.key_vault_key_id if v.key_vault_key_id != null && length(v.key_vault_key_id) > 0 }
}
output "hpc_caches_location" {
  description = "Map of location values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.location if v.location != null && length(v.location) > 0 }
}
output "hpc_caches_mount_addresses" {
  description = "Map of mount_addresses values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.mount_addresses if v.mount_addresses != null && length(v.mount_addresses) > 0 }
}
output "hpc_caches_mtu" {
  description = "Map of mtu values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.mtu if v.mtu != null }
}
output "hpc_caches_name" {
  description = "Map of name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.name if v.name != null && length(v.name) > 0 }
}
output "hpc_caches_ntp_server" {
  description = "Map of ntp_server values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.ntp_server if v.ntp_server != null && length(v.ntp_server) > 0 }
}
output "hpc_caches_resource_group_name" {
  description = "Map of resource_group_name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "hpc_caches_sku_name" {
  description = "Map of sku_name values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "hpc_caches_subnet_id" {
  description = "Map of subnet_id values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.subnet_id if v.subnet_id != null && length(v.subnet_id) > 0 }
}
output "hpc_caches_tags" {
  description = "Map of tags values across all hpc_caches, keyed the same as var.hpc_caches"
  value       = { for k, v in azurerm_hpc_cache.hpc_caches : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

