variable "ai_language_jobs" {
  description = <<EOT
Map of ai_language_jobs, attributes below
Required:
    - compartment_id
    - input_location (block):
        - bucket (required)
        - location_type (required)
        - namespace (required)
        - object_names (optional)
    - model_metadata_details (block):
        - configuration (optional)
        - endpoint_id (optional)
        - language_code (optional)
        - model_id (optional)
        - model_type (optional)
    - output_location (block):
        - bucket (required)
        - namespace (required)
        - prefix (optional)
Optional:
    - description
    - display_name
    - input_configuration (block):
        - configuration (optional)
        - document_types (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    description    = optional(string)
    display_name   = optional(string)
    input_location = object({
      bucket        = string
      location_type = string
      namespace     = string
      object_names  = optional(list(string))
    })
    model_metadata_details = list(object({
      configuration = optional(map(any))
      endpoint_id   = optional(string)
      language_code = optional(string)
      model_id      = optional(string)
      model_type    = optional(string)
    }))
    output_location = object({
      bucket    = string
      namespace = string
      prefix    = optional(string)
    })
    input_configuration = optional(object({
      configuration  = optional(map(any))
      document_types = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.ai_language_jobs : (
        length(v.model_metadata_details) >= 1
      )
    ])
    error_message = "Each model_metadata_details list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.ai_language_jobs : (
        contains([for v in ["OBJECT_STORAGE_FILE_LIST", "OBJECT_STORAGE_PREFIX"] : lower(v)], lower(v.input_location.location_type))
      )
    ])
    error_message = "must be one of: \"OBJECT_STORAGE_FILE_LIST\", \"OBJECT_STORAGE_PREFIX\""
  }
}

