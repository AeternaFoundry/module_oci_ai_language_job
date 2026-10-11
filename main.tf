resource "oci_ai_language_job" "ai_language_jobs" {
  for_each = var.ai_language_jobs

  compartment_id = each.value.compartment_id
  description    = each.value.description
  display_name   = each.value.display_name

  input_location {
    bucket        = each.value.input_location.bucket
    location_type = each.value.input_location.location_type
    namespace     = each.value.input_location.namespace
    object_names  = each.value.input_location.object_names
  }

  dynamic "model_metadata_details" {
    for_each = each.value.model_metadata_details
    content {
      configuration = model_metadata_details.value.configuration
      endpoint_id   = model_metadata_details.value.endpoint_id
      language_code = model_metadata_details.value.language_code
      model_id      = model_metadata_details.value.model_id
      model_type    = model_metadata_details.value.model_type
    }
  }

  output_location {
    bucket    = each.value.output_location.bucket
    namespace = each.value.output_location.namespace
    prefix    = each.value.output_location.prefix
  }

  dynamic "input_configuration" {
    for_each = each.value.input_configuration != null ? [each.value.input_configuration] : []
    content {
      configuration  = input_configuration.value.configuration
      document_types = input_configuration.value.document_types
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

