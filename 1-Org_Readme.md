## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_armor_default_rules"></a> [cloud\_armor\_default\_rules](#module\_cloud\_armor\_default\_rules) | ./module/gcp_cloud_armor | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_egress_ports"></a> [allowed\_egress\_ports](#input\_allowed\_egress\_ports) | n/a | `list(string)` | n/a | yes |
| <a name="input_allowed_ip_cidr_ranges"></a> [allowed\_ip\_cidr\_ranges](#input\_allowed\_ip\_cidr\_ranges) | The CIDR range which will be allowed in the cloud armor policy | `list(string)` | n/a | yes |
| <a name="input_blocked_ip_cidr_ranges"></a> [blocked\_ip\_cidr\_ranges](#input\_blocked\_ip\_cidr\_ranges) | The CIDR range which will be denied in the cloud armor policy | `list(string)` | n/a | yes |
| <a name="input_cloud_armor_project_id"></a> [cloud\_armor\_project\_id](#input\_cloud\_armor\_project\_id) | The project id where cloud armor policy will be deployed/created | `list(string)` | n/a | yes |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | #################################################################################################### Log Snik | `any` | n/a | yes |
| <a name="input_crs_version"></a> [crs\_version](#input\_crs\_version) | Cloud Armor CRS version to be used | `string` | n/a | yes |
| <a name="input_default_region"></a> [default\_region](#input\_default\_region) | The default gcp region for deployment | `string` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | n/a | `string` | `"The Domain which is used to share access with"` | no |
| <a name="input_domains_to_allow"></a> [domains\_to\_allow](#input\_domains\_to\_allow) | list of domains which are allowed to get access | `list(string)` | n/a | yes |
| <a name="input_firewall_policies_enable_logging"></a> [firewall\_policies\_enable\_logging](#input\_firewall\_policies\_enable\_logging) | Enable firewall logging on org level | `bool` | `true` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | The ID of the parent folder should be - folders/23242343 | `string` | n/a | yes |
| <a name="input_geo_block_region"></a> [geo\_block\_region](#input\_geo\_block\_region) | 2 digit country code to block access from - example 'AU' for Australia | `string` | `""` | no |
| <a name="input_group_org_admin"></a> [group\_org\_admin](#input\_group\_org\_admin) | The G-suite group email id for ORG admins | `string` | n/a | yes |
| <a name="input_group_org_billing_admin"></a> [group\_org\_billing\_admin](#input\_group\_org\_billing\_admin) | The G-suite group email id for ORG billing Admins | `string` | n/a | yes |
| <a name="input_group_org_logging_admin"></a> [group\_org\_logging\_admin](#input\_group\_org\_logging\_admin) | The G-suite group email id for ORG Logging Admins | `string` | n/a | yes |
| <a name="input_group_org_logging_viewers"></a> [group\_org\_logging\_viewers](#input\_group\_org\_logging\_viewers) | The G-suite group email id for ORG Logging Viewers | `string` | n/a | yes |
| <a name="input_group_org_monitoring_admin"></a> [group\_org\_monitoring\_admin](#input\_group\_org\_monitoring\_admin) | The G-suite group email id for ORG monitoring Admins | `string` | n/a | yes |
| <a name="input_group_org_networks_admin"></a> [group\_org\_networks\_admin](#input\_group\_org\_networks\_admin) | The G-suite group email id for network admins - Project Level | `string` | n/a | yes |
| <a name="input_group_org_security_admin"></a> [group\_org\_security\_admin](#input\_group\_org\_security\_admin) | The G-suite group email id for ORG security Admins | `string` | n/a | yes |
| <a name="input_group_org_shared_vpc_admin"></a> [group\_org\_shared\_vpc\_admin](#input\_group\_org\_shared\_vpc\_admin) | The G-suite group email id for ORG shared vpc Admins | `string` | n/a | yes |
| <a name="input_group_org_support_admin"></a> [group\_org\_support\_admin](#input\_group\_org\_support\_admin) | The G-suite group email id for ORG support Admins | `string` | n/a | yes |
| <a name="input_group_org_support_viewer"></a> [group\_org\_support\_viewer](#input\_group\_org\_support\_viewer) | The G-suite group email id for ORG support viewers | `string` | n/a | yes |
| <a name="input_group_org_viewer"></a> [group\_org\_viewer](#input\_group\_org\_viewer) | The G-suite group email id for ORG viewers | `string` | n/a | yes |
| <a name="input_layer_7_ddos_defense_config"></a> [layer\_7\_ddos\_defense\_config](#input\_layer\_7\_ddos\_defense\_config) | if set to true the L7 ddos config will be enabled | `bool` | n/a | yes |
| <a name="input_layer_7_ddos_rule_visibility"></a> [layer\_7\_ddos\_rule\_visibility](#input\_layer\_7\_ddos\_rule\_visibility) | Protected endpoint type, it can be STANDARD or ADVANCED - | `string` | n/a | yes |
| <a name="input_lb_hc_ingress_ports"></a> [lb\_hc\_ingress\_ports](#input\_lb\_hc\_ingress\_ports) | Ingress traffic on ports for LB health check | `list(string)` | n/a | yes |
| <a name="input_lifecycle_rules"></a> [lifecycle\_rules](#input\_lifecycle\_rules) | List of lifecycle rules to configure. Format is the same as described in provider documentation https://www.terraform.io/docs/providers/google/r/storage_bucket.html#lifecycle_rule except condition.matches\_storage\_class should be a comma delimited string. | <pre>set(object({<br>    # Object with keys:<br>    # - type - The type of the action of this Lifecycle Rule. Supported values: Delete and SetStorageClass.<br>    # - storage_class - (Required if action type is SetStorageClass) The target Storage Class of objects affected by this Lifecycle Rule.<br>    action = map(string)<br><br>    # Object with keys:<br>    # - age - (Optional) Minimum age of an object in days to satisfy this condition.<br>    # - created_before - (Optional) Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition.<br>    # - with_state - (Optional) Match to live and/or archived objects. Supported values include: "LIVE", "ARCHIVED", "ANY".<br>    # - matches_storage_class - (Optional) Comma delimited string for storage class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, STANDARD, DURABLE_REDUCED_AVAILABILITY.<br>    # - num_newer_versions - (Optional) Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition.<br>    # - days_since_custom_time - (Optional) The number of days from the Custom-Time metadata attribute after which this condition becomes true.<br>    condition = map(string)<br>  }))</pre> | `[]` | no |
| <a name="input_org_cloudsql_external_ip_access"></a> [org\_cloudsql\_external\_ip\_access](#input\_org\_cloudsql\_external\_ip\_access) | Restricts configuring Public IP on Cloud SQL instances where this constraint is set to True | `bool` | n/a | yes |
| <a name="input_org_compute_disable_guest_attributes_access"></a> [org\_compute\_disable\_guest\_attributes\_access](#input\_org\_compute\_disable\_guest\_attributes\_access) | If true this will disable guest attribute access | `bool` | n/a | yes |
| <a name="input_org_disable_automatic_iam_grants_on_default_service_accounts"></a> [org\_disable\_automatic\_iam\_grants\_on\_default\_service\_accounts](#input\_org\_disable\_automatic\_iam\_grants\_on\_default\_service\_accounts) | prevents the default App Engine and Compute Engine service accounts that are created in your projects from being automatically granted any IAM role on the project when the accounts are created. | `bool` | n/a | yes |
| <a name="input_org_disable_nested_virtualization"></a> [org\_disable\_nested\_virtualization](#input\_org\_disable\_nested\_virtualization) | If true it will disable nested virtulization | `bool` | n/a | yes |
| <a name="input_org_disable_sa_key_creation"></a> [org\_disable\_sa\_key\_creation](#input\_org\_disable\_sa\_key\_creation) | This boolean constraint disables the creation of service account external keys | `bool` | n/a | yes |
| <a name="input_org_disable_serial_port_access"></a> [org\_disable\_serial\_port\_access](#input\_org\_disable\_serial\_port\_access) | If true it will disable serial port access on vms | `bool` | n/a | yes |
| <a name="input_org_domain_restricted_sharing"></a> [org\_domain\_restricted\_sharing](#input\_org\_domain\_restricted\_sharing) | This list constraint defines one or more Cloud Identity or Google Workspace customer IDs whose principals can be added to IAM policies. | `bool` | n/a | yes |
| <a name="input_org_enforce_bucket_level_access"></a> [org\_enforce\_bucket\_level\_access](#input\_org\_enforce\_bucket\_level\_access) | If true, Any new bucket in the Organization resource must have uniform bucket-level access enabled | `bool` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | The Organization ID should be in this format - organizations/4386632132 | `string` | n/a | yes |
| <a name="input_org_shared_require_os_login"></a> [org\_shared\_require\_os\_login](#input\_org\_shared\_require\_os\_login) | when set to true, enables OS Login on all newly created Projects. | `bool` | n/a | yes |
| <a name="input_org_shared_vpc_lien_removal"></a> [org\_shared\_vpc\_lien\_removal](#input\_org\_shared\_vpc\_lien\_removal) | restricts the set of users that can remove a Shared VPC host project lien without organization-level permission. | `bool` | n/a | yes |
| <a name="input_org_skip_default_network"></a> [org\_skip\_default\_network](#input\_org\_skip\_default\_network) | If true this will skip default vpc creation while creating new project | `bool` | n/a | yes |
| <a name="input_org_vm_external_ip_access"></a> [org\_vm\_external\_ip\_access](#input\_org\_vm\_external\_ip\_access) | If true then it will prevent vms from having external IP address | `bool` | n/a | yes |
| <a name="input_parent_folder"></a> [parent\_folder](#input\_parent\_folder) | The level where the policy should be applied - org/folder | `string` | n/a | yes |
| <a name="input_preview_mode"></a> [preview\_mode](#input\_preview\_mode) | When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. | `bool` | `true` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project id where resources wil be deployed | `string` | n/a | yes |
| <a name="input_relase_type"></a> [relase\_type](#input\_relase\_type) | The release type to be used in cloud armor rules - canary/stable | `string` | n/a | yes |
| <a name="input_resource_type"></a> [resource\_type](#input\_resource\_type) | n/a | `string` | n/a | yes |
| <a name="input_sensitivity_level"></a> [sensitivity\_level](#input\_sensitivity\_level) | The level sensitivity to be enforced in cloud armor policy | `number` | n/a | yes |
| <a name="input_table_expiration_ms"></a> [table\_expiration\_ms](#input\_table\_expiration\_ms) | The Expiration for the table | `number` | `604800000` | no |

## Outputs

No outputs.
