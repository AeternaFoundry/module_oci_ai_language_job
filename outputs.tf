output "ai_language_jobs_id" {
  description = "Map of id values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no id are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_language_jobs_compartment_id" {
  description = "Map of compartment_id values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no compartment_id are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ai_language_jobs_completed_documents" {
  description = "Map of completed_documents values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no completed_documents are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.completed_documents if v.completed_documents != null }
}
output "ai_language_jobs_created_by" {
  description = "Map of created_by values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no created_by are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "ai_language_jobs_description" {
  description = "Map of description values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no description are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "ai_language_jobs_display_name" {
  description = "Map of display_name values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no display_name are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ai_language_jobs_failed_documents" {
  description = "Map of failed_documents values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no failed_documents are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.failed_documents if v.failed_documents != null }
}
output "ai_language_jobs_input_configuration" {
  description = "Map of input_configuration values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no input_configuration are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => one(v.input_configuration) if v.input_configuration != null && length(v.input_configuration) > 0 }
}
output "ai_language_jobs_input_location" {
  description = "Map of input_location values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no input_location are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => one(v.input_location) if v.input_location != null && length(v.input_location) > 0 }
}
output "ai_language_jobs_lifecycle_details" {
  description = "Map of lifecycle_details values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "ai_language_jobs_model_metadata_details" {
  description = "Map of model_metadata_details values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no model_metadata_details are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.model_metadata_details if v.model_metadata_details != null && length(v.model_metadata_details) > 0 }
}
output "ai_language_jobs_output_location" {
  description = "Map of output_location values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no output_location are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => one(v.output_location) if v.output_location != null && length(v.output_location) > 0 }
}
output "ai_language_jobs_pending_documents" {
  description = "Map of pending_documents values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no pending_documents are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.pending_documents if v.pending_documents != null }
}
output "ai_language_jobs_percent_complete" {
  description = "Map of percent_complete values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no percent_complete are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.percent_complete if v.percent_complete != null }
}
output "ai_language_jobs_state" {
  description = "Map of state values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no state are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "ai_language_jobs_time_accepted" {
  description = "Map of time_accepted values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no time_accepted are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.time_accepted if v.time_accepted != null && length(v.time_accepted) > 0 }
}
output "ai_language_jobs_time_completed" {
  description = "Map of time_completed values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no time_completed are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.time_completed if v.time_completed != null && length(v.time_completed) > 0 }
}
output "ai_language_jobs_time_started" {
  description = "Map of time_started values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no time_started are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.time_started if v.time_started != null && length(v.time_started) > 0 }
}
output "ai_language_jobs_total_documents" {
  description = "Map of total_documents values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no total_documents are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.total_documents if v.total_documents != null }
}
output "ai_language_jobs_ttl_in_days" {
  description = "Map of ttl_in_days values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no ttl_in_days are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.ttl_in_days if v.ttl_in_days != null }
}
output "ai_language_jobs_warnings_count" {
  description = "Map of warnings_count values across all ai_language_jobs, keyed the same as var.ai_language_jobs except keys with no warnings_count are omitted"
  value       = { for k, v in oci_ai_language_job.ai_language_jobs : k => v.warnings_count if v.warnings_count != null }
}

