variable "log_bucket_project_id" {
    description = "Project ID of the destination project"
    type        = string
}

variable "retention_days" {
    description = "Number of days for logs retention in log bucket"
    type        = string
    default     = "30"
}

variable "log_bucket_id" {
    description = "Name of the log bucket on the destination project"
    type        = string
}

variable "log_sink_project_id" {
    description = "Project ID of the source project"
    type        = string
}

variable "log_sink_name" {
    description = "Name of the log sink on the source project"
    type        = string
}

variable "log_sink_filter" {
    description = "The filter to apply when exporting logs. Only log entries that match the filter are exported"
    type        = string
}

variable "region" {
    description = "The default GCP region to use"
}

variable "description" {
    description = ""
}

variable "enabled_unique_writer" {
    description = "If true, the sink will have a unique writer identity in the sink's destination. The default value is false, and in that case, the sink's destination is treated as if it were anonymously logged to."
    type        = bool
    default     = true
}

variable "viewAccessors" {
    description = "Provides access to view the log buckets"
    type        = list(string)
    default  = [] 
}

variable "writer_id" {
    description = "The identity to use for writing log entries to the sink's destination. This is used only when the sink's destination is a folder or organization. It does not apply to sinks whose destination is a project."
    type        = list(string)
    default     = []
}
