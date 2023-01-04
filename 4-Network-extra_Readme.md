## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_access_level_members"></a> [access\_level\_members](#module\_access\_level\_members) | terraform-google-modules/vpc-service-controls/google//modules/access_level | n/a |
| <a name="module_regular_service_perimeter_1"></a> [regular\_service\_perimeter\_1](#module\_regular\_service\_perimeter\_1) | terraform-google-modules/vpc-service-controls/google//modules/regular_service_perimeter | n/a |

## Resources

| Name | Type |
|------|------|
| [google_access_context_manager_access_policy.access_policy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/access_context_manager_access_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_level_name"></a> [access\_level\_name](#input\_access\_level\_name) | n/a | `string` | n/a | yes |
| <a name="input_access_policy_access_policy_scope"></a> [access\_policy\_access\_policy\_scope](#input\_access\_policy\_access\_policy\_scope) | n/a | `list(string)` | n/a | yes |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | n/a | `string` | n/a | yes |
| <a name="input_compute_snapshot_storage_locations"></a> [compute\_snapshot\_storage\_locations](#input\_compute\_snapshot\_storage\_locations) | n/a | `list(string)` | n/a | yes |
| <a name="input_compute_vm_start_schedule"></a> [compute\_vm\_start\_schedule](#input\_compute\_vm\_start\_schedule) | ------------------------------------------------------------------------------ Compute Start Stop Policy | `string` | n/a | yes |
| <a name="input_compute_vm_stop_schedule"></a> [compute\_vm\_stop\_schedule](#input\_compute\_vm\_stop\_schedule) | n/a | `string` | n/a | yes |
| <a name="input_default_region1"></a> [default\_region1](#input\_default\_region1) | Default region 1 for Cloud Routers | `string` | n/a | yes |
| <a name="input_default_region2"></a> [default\_region2](#input\_default\_region2) | Default region 2 for Cloud Routers | `string` | n/a | yes |
| <a name="input_folder_prefix"></a> [folder\_prefix](#input\_folder\_prefix) | Name prefix to use for folders created. | `string` | `"fldr"` | no |
| <a name="input_ha_vpn_source_project_id"></a> [ha\_vpn\_source\_project\_id](#input\_ha\_vpn\_source\_project\_id) | VPC Project ID | `string` | n/a | yes |
| <a name="input_ip_subnetworks"></a> [ip\_subnetworks](#input\_ip\_subnetworks) | n/a | `list(string)` | n/a | yes |
| <a name="input_max_retention_days"></a> [max\_retention\_days](#input\_max\_retention\_days) | n/a | `number` | n/a | yes |
| <a name="input_parent_folder"></a> [parent\_folder](#input\_parent\_folder) | Optional - if using a folder for testing. | `string` | `""` | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | n/a | `string` | n/a | yes |
| <a name="input_perimeter_name"></a> [perimeter\_name](#input\_perimeter\_name) | name of the VPCSC service permiter | `string` | `"default-service-perimeter"` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | n/a | `string` | n/a | yes |
| <a name="input_protected_project_numbers"></a> [protected\_project\_numbers](#input\_protected\_project\_numbers) | Please Enter the list of project numbers to be protected by VPCSC boundry | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_restricted_services"></a> [restricted\_services](#input\_restricted\_services) | Please enter the list of service APIs to be under restricted services | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_schecule_start_time_daily"></a> [schecule\_start\_time\_daily](#input\_schecule\_start\_time\_daily) | n/a | `string` | n/a | yes |
| <a name="input_schecule_start_time_weekly"></a> [schecule\_start\_time\_weekly](#input\_schecule\_start\_time\_weekly) | n/a | `string` | n/a | yes |
| <a name="input_service_project_list"></a> [service\_project\_list](#input\_service\_project\_list) | n/a | `list(string)` | n/a | yes |
| <a name="input_time_zone"></a> [time\_zone](#input\_time\_zone) | n/a | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Label to identify the VPC associated with shared VPC that will use the Interconnect. | `string` | n/a | yes |

## Outputs

No outputs.
