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
| [google_compute_security_policy.policy](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_security_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_armor_project_id"></a> [cloud\_armor\_project\_id](#input\_cloud\_armor\_project\_id) | n/a | `list(string)` | n/a | yes |
| <a name="input_default_rules"></a> [default\_rules](#input\_default\_rules) | n/a | <pre>map(object({<br>    action         = string<br>    priority       = string<br>    versioned_expr = string<br>    src_ip_ranges  = list(string)<br>    #    description    = string<br>    })<br>  )</pre> | n/a | yes |
| <a name="input_layer_7_ddos_defense_config"></a> [layer\_7\_ddos\_defense\_config](#input\_layer\_7\_ddos\_defense\_config) | n/a | `bool` | n/a | yes |
| <a name="input_layer_7_ddos_rule_visibility"></a> [layer\_7\_ddos\_rule\_visibility](#input\_layer\_7\_ddos\_rule\_visibility) | can be a string like STANDARD or PREMIUM | `string` | n/a | yes |
| <a name="input_owasp_rules"></a> [owasp\_rules](#input\_owasp\_rules) | n/a | <pre>map(object({<br>    action     = string<br>    priority   = string<br>    expression = string<br>    #   description = string<br>    }<br>    )<br>  )</pre> | n/a | yes |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | Cloud Armor policy name | `string` | `""` | no |
| <a name="input_preview_mode"></a> [preview\_mode](#input\_preview\_mode) | When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. | `bool` | `true` | no |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | n/a | <pre>map(object({<br>    action     = string<br>    preview    = bool<br>    priority   = string<br>    versioned_expr = string<br>    src_ip_ranges = list(string)<br>    rate_limit_conform_action = string<br>    rate_limit_exceed_action = string<br>    rate_limit_enforce_on_key = string<br>    rate_limit_threshold_count = string<br>    rate_limit_interval_sec = string<br>    #   description = string<br>    }<br>    )<br>  )</pre> | n/a | yes |

## Outputs

No outputs.
