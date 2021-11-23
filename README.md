## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| log_bucket_project_id | Project ID of the destination project for logs | `string` | n/a | Yes |
| retention_days | Number of days for logs retention in log bucket | `string` | 30 | No |
| log_bucket_id | Name of the log bucket on the destination project | `string` | n/a | Yes |
| viewAccessors | Provides access to view the log buckets on Log Explorer of the destination project | `list(string)` | `[]` | No |
| log_sink_project_id | Project ID of the source project where the log origin | `string` | n/a | Yes |
| log_sink_name | Name of the log sink on the source project | `string` | n/a | Yes |
| log_sink_filter | The filter to apply when exporting logs. Only log entries that match the filter are exported | `string` | n/a | No |

## Outputs

No output.
