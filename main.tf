data "snowflake_storage_lifecycle_policies" "storage_lifecycle_policies_lookup" {
  for_each = var.storage_lifecycle_policies_lookup

  like          = each.value.like
  with_describe = each.value.with_describe

  dynamic "in" {
    for_each = each.value.in != null ? [each.value.in] : []
    content {
      account  = in.value.account
      database = in.value.database
      schema   = in.value.schema
    }
  }
}

