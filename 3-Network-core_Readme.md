## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_router"></a> [cloud\_router](#module\_cloud\_router) | ./modules/cloud_routers | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/vpc | n/a |
| <a name="module_private_service_access"></a> [private\_service\_access](#module\_private\_service\_access) | ./modules/private_service_access | n/a |
| <a name="module_shared-host-project"></a> [shared-host-project](#module\_shared-host-project) | ./modules/shared_host_project | n/a |
| <a name="module_shared_vpc_service_project_attachment"></a> [shared\_vpc\_service\_project\_attachment](#module\_shared\_vpc\_service\_project\_attachment) | ./modules/service_project_attachment | n/a |
| <a name="module_subnets"></a> [subnets](#module\_subnets) | ./modules/subnets | n/a |

## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.allow_egress_private](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_egress_specific](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_iap_rdp_ingress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_iap_ssh_ingress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_lb_health_checks](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.allow_windows_activation_egress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.deny_all_egress](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.mssql](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.mysql](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.oracle](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_subnetwork_iam_member.subnetwork_sharing](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork_iam_member) | resource |
| [google_compute_network.hub_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |
| [google_compute_network.spoke1_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |
| [google_compute_network.spoke2_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_egress_ranges"></a> [allow\_egress\_ranges](#input\_allow\_egress\_ranges) | The IP ranges which will be denied as per firewall default rules | `list(string)` | n/a | yes |
| <a name="input_allow_lb_health_check_ranges"></a> [allow\_lb\_health\_check\_ranges](#input\_allow\_lb\_health\_check\_ranges) | The IP ranges which will be allowed as per firewall default rules | `list(string)` | n/a | yes |
| <a name="input_bgp_asn"></a> [bgp\_asn](#input\_bgp\_asn) | the ASN number of BGP session | `number` | n/a | yes |
| <a name="input_cloud_routers_config"></a> [cloud\_routers\_config](#input\_cloud\_routers\_config) | Configuration related to NAT, Cloud Router, External IP for NAT | `any` | n/a | yes |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | 4 digit code which will be used as prefix for most of the resources | `string` | n/a | yes |
| <a name="input_db_ranges"></a> [db\_ranges](#input\_db\_ranges) | The mysql IP ranges which will be denied as per firewall default rules | `list(string)` | n/a | yes |
| <a name="input_external_ips_count"></a> [external\_ips\_count](#input\_external\_ips\_count) | As the name suggest its for number of external static ips | `number` | n/a | yes |
| <a name="input_firewall_enable_logging"></a> [firewall\_enable\_logging](#input\_firewall\_enable\_logging) | Boolean value to enable or disable firewall logs | `bool` | n/a | yes |
| <a name="input_network_config"></a> [network\_config](#input\_network\_config) | Configuration related to VPC, host project, prive service access - Plese check tfvars file for the details | `any` | n/a | yes |
| <a name="input_network_tier"></a> [network\_tier](#input\_network\_tier) | Network tier to be used by VM - can be  STANDARD or PREMIUM | `string` | n/a | yes |
| <a name="input_prefix_length"></a> [prefix\_length](#input\_prefix\_length) | Length of the prefix | `string` | n/a | yes |
| <a name="input_service_project_list"></a> [service\_project\_list](#input\_service\_project\_list) | The list of project whcih are suppossed to be attached to host project as service project | `list(string)` | n/a | yes |
| <a name="input_shared_vpc_host_project"></a> [shared\_vpc\_host\_project](#input\_shared\_vpc\_host\_project) | The project which need to be marked as host project for shared vpc | `string` | n/a | yes |
| <a name="input_subnets_config"></a> [subnets\_config](#input\_subnets\_config) | Configuration related to subnets, subnetsharing, secondary ip - Please check tfvar file for the details | `any` | n/a | yes |

## Outputs

No outputs.
