## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_agent_policy_bu1"></a> [agent\_policy\_bu1](#module\_agent\_policy\_bu1) | terraform-google-modules/cloud-operations/google//modules/agent-policy | ~> 0.2.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | This is the billing account ID whcih will be associated with the projects for billing | `string` | `""` | no |
| <a name="input_bu_name"></a> [bu\_name](#input\_bu\_name) | This will be used as top level folder names, examples like - HR, Finance, Technology, Retail | `list(string)` | `[]` | no |
| <a name="input_company_name"></a> [company\_name](#input\_company\_name) | The 4 digit company code which will be used as prefix with the resource names | `string` | `""` | no |
| <a name="input_environments"></a> [environments](#input\_environments) | This is the Environment values like - prod, test, dev | `list(string)` | `[]` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | This is the folder ID whcih will be used as parent of another folders or projects | `string` | `""` | no |
| <a name="input_folder_name"></a> [folder\_name](#input\_folder\_name) | This is the folder names whcih will be used as parent of another folders or projects | `list(string)` | `[]` | no |
| <a name="input_need_ops_agent"></a> [need\_ops\_agent](#input\_need\_ops\_agent) | This variable is to install Ops-agent on vms so need to set to yes/no to go ahead | `string` | `"no"` | no |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | The Organizatiuon id (make sure to follow this pattern -- ogranizations/124323456) | `string` | `""` | no |
| <a name="input_random_project_id"></a> [random\_project\_id](#input\_random\_project\_id) | This is used to generate random project id, in this case its not in use | `string` | `""` | no |

## Outputs

No outputs.
