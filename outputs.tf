output "storage_lifecycle_policies_lookup_id" {
  description = "Map of id values across all storage_lifecycle_policies_lookup, keyed the same as var.storage_lifecycle_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_storage_lifecycle_policies.storage_lifecycle_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_lifecycle_policies_lookup_in" {
  description = "Map of in values across all storage_lifecycle_policies_lookup, keyed the same as var.storage_lifecycle_policies_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_storage_lifecycle_policies.storage_lifecycle_policies_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "storage_lifecycle_policies_lookup_like" {
  description = "Map of like values across all storage_lifecycle_policies_lookup, keyed the same as var.storage_lifecycle_policies_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_storage_lifecycle_policies.storage_lifecycle_policies_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "storage_lifecycle_policies_lookup_storage_lifecycle_policies" {
  description = "Map of storage_lifecycle_policies values across all storage_lifecycle_policies_lookup, keyed the same as var.storage_lifecycle_policies_lookup except keys with no storage_lifecycle_policies are omitted"
  value       = { for k, v in data.snowflake_storage_lifecycle_policies.storage_lifecycle_policies_lookup : k => v.storage_lifecycle_policies if v.storage_lifecycle_policies != null && length(v.storage_lifecycle_policies) > 0 }
}
output "storage_lifecycle_policies_lookup_with_describe" {
  description = "Map of with_describe values across all storage_lifecycle_policies_lookup, keyed the same as var.storage_lifecycle_policies_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_storage_lifecycle_policies.storage_lifecycle_policies_lookup : k => v.with_describe if v.with_describe != null }
}

