## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset.dataset](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |
| [google_logging_folder_sink.my-sink](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_folder_sink) | resource |
| [google_logging_organization_sink.my-sink](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_organization_sink) | resource |
| [google_logging_project_sink.my-sink](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_project_sink) | resource |
| [google_pubsub_topic.log_sink_topic](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/pubsub_topic) | resource |
| [google_storage_bucket.log-bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_log_bq-dataset_id"></a> [log\_bq-dataset\_id](#input\_log\_bq-dataset\_id) | n/a | `string` | n/a | yes |
| <a name="input_log_bq_dataset_id"></a> [log\_bq\_dataset\_id](#input\_log\_bq\_dataset\_id) | n/a | `string` | n/a | yes |
| <a name="input_log_bucket_name"></a> [log\_bucket\_name](#input\_log\_bucket\_name) | n/a | `string` | n/a | yes |
| <a name="input_log_pubsub_topic_name"></a> [log\_pubsub\_topic\_name](#input\_log\_pubsub\_topic\_name) | n/a | `string` | n/a | yes |
| <a name="input_log_sink_destination_type"></a> [log\_sink\_destination\_type](#input\_log\_sink\_destination\_type) | n/a | `string` | n/a | yes |
| <a name="input_log_sink_location"></a> [log\_sink\_location](#input\_log\_sink\_location) | n/a | `string` | n/a | yes |
| <a name="input_log_sink_project_id"></a> [log\_sink\_project\_id](#input\_log\_sink\_project\_id) | n/a | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
