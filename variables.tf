variable "hpc_caches" {
  description = <<EOT
Map of hpc_caches, attributes below
Required:
    - cache_size_in_gb
    - location
    - name
    - resource_group_name
    - sku_name
    - subnet_id
Optional:
    - automatically_rotate_key_to_latest_enabled
    - key_vault_key_id
    - mtu
    - ntp_server
    - tags
    - default_access_policy (block):
        - access_rule (required, block):
            - access (required)
            - anonymous_gid (optional)
            - anonymous_uid (optional)
            - filter (optional)
            - root_squash_enabled (optional)
            - scope (required)
            - submount_access_enabled (optional)
            - suid_enabled (optional)
    - directory_active_directory (block):
        - cache_netbios_name (required)
        - dns_primary_ip (required)
        - dns_secondary_ip (optional)
        - domain_name (required)
        - domain_netbios_name (required)
        - password (required)
        - username (required)
    - directory_flat_file (block):
        - group_file_uri (required)
        - password_file_uri (required)
    - directory_ldap (block):
        - base_dn (required)
        - bind (optional, block):
            - dn (required)
            - password (required)
        - certificate_validation_uri (optional)
        - download_certificate_automatically (optional)
        - encrypted (optional)
        - server (required)
    - dns (block):
        - search_domain (optional)
        - servers (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    cache_size_in_gb                           = number
    location                                   = string
    name                                       = string
    resource_group_name                        = string
    sku_name                                   = string
    subnet_id                                  = string
    automatically_rotate_key_to_latest_enabled = optional(bool)
    key_vault_key_id                           = optional(string)
    mtu                                        = optional(number, 1500)
    ntp_server                                 = optional(string, "time.windows.com")
    tags                                       = optional(map(string))
    default_access_policy = optional(object({
      access_rule = list(object({
        access                  = string
        anonymous_gid           = optional(number)
        anonymous_uid           = optional(number)
        filter                  = optional(string)
        root_squash_enabled     = optional(bool)
        scope                   = string
        submount_access_enabled = optional(bool)
        suid_enabled            = optional(bool)
      }))
    }))
    directory_active_directory = optional(object({
      cache_netbios_name  = string
      dns_primary_ip      = string
      dns_secondary_ip    = optional(string)
      domain_name         = string
      domain_netbios_name = string
      password            = string
      username            = string
    }))
    directory_flat_file = optional(object({
      group_file_uri    = string
      password_file_uri = string
    }))
    directory_ldap = optional(object({
      base_dn = string
      bind = optional(object({
        dn       = string
        password = string
      }))
      certificate_validation_uri         = optional(string)
      download_certificate_automatically = optional(bool)
      encrypted                          = optional(bool)
      server                             = string
    }))
    dns = optional(object({
      search_domain = optional(string)
      servers       = list(string)
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.hpc_caches : (
        length(v.default_access_policy.access_rule) >= 1 && length(v.default_access_policy.access_rule) <= 3
      )
    ])
    error_message = "Each access_rule list must contain between 1 and 3 items"
  }
}

