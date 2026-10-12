variable "storage_lifecycle_policies_lookup" {
  description = <<EOT
Map of storage_lifecycle_policies_lookup, attributes below
Optional:
    - like
    - with_describe
    - in (block):
        - account (optional)
        - database (optional)
        - schema (optional)
EOT

  type = map(object({
    like          = optional(string)
    with_describe = optional(bool)
    in = optional(object({
      account  = optional(bool)
      database = optional(string)
      schema   = optional(string)
    }))
  }))
}

