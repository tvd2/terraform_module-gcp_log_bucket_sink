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

variable "viewAccessors" {
    description = "Provides access to view the log buckets"
    type        = list(string)
    defdefault  = [] 
}
