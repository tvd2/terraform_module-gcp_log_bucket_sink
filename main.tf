resource "google_logging_project_bucket_config" "this" {
    project         = var.log_bucket_project_id
    location        = var.region
    retention_days  = var.retention_days
    bucket_id       = var.log_bucket_id
    description     = "${var.description} (Managed by Terraform)"
}

resource "google_logging_project_sink" "this" {
    project         = var.log_sink_project_id  
    name            = var.log_sink_name
    description     = "${var.description} (Managed by Terraform)"
    destination     = "logging.googleapis.com/projects/${var.log_bucket_project_id}/locations/${var.region}/buckets/${var.log_bucket_id}"
    filter          = "${var.log_sink_filter}"
    
    unique_writer_identity = true
}

resource "google_project_iam_binding" "this-bucket-writer" {
    project         = var.log_bucket_project_id
    role            = "roles/logging.bucketWriter"
    members         = [
        google_logging_project_sink.this.writer_identity,
    ]
}

resource "google_project_iam_binding" "this-view-accessors" {
    count           = length(var.viewAccessors) > 0 ? 1 : 0

    project         = var.log_bucket_project_id
    role            = "roles/logging.viewAccessor"
    members         = var.viewAccessors
}
