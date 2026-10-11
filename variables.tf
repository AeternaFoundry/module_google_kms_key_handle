variable "kms_key_handles" {
  description = <<EOT
Map of kms_key_handles, attributes below
Required:
    - location
    - name
    - resource_type_selector
Optional:
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    location               = string
    name                   = string
    resource_type_selector = string
    project                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

