resource "google_kms_key_handle" "kms_key_handles" {
  for_each = var.kms_key_handles

  location               = each.value.location
  name                   = each.value.name
  resource_type_selector = each.value.resource_type_selector
  project                = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

