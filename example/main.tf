module "example-log-sink" {
  source = "../"
  
  region = var.region
  description = "example-log-transfer"

  log_bucket_project_id = "destination-project-id"
  log_bucket_id = "example-log-bucket-id"
  retention_days = "5"

  log_sink_project_id = var.project_id
  log_sink_name = "examplate-log-sink-id"
  log_sink_filter = "resource.type = cloudsql_database"
  viewAccessors = [
    "user:tvd2@wolfplaces.com",
  ]
}
