# Azure Virtual Network Peering Module

### Requirement

* When running Terraform on the CLI, you must [configure credentials in .terraformrc or terraform.rc](https://www.terraform.io/docs/commands/cli-config.html) to access this module:
  ```
  credentials "app.terraform.io" {
    # valid user API token:
    token = "xxxxxx.atlasv1.zzzzzzzzzzzzz"
  }
  ```

### Example

```
module "vnet" {
  source              = "app.terraform.io/simedarby/peering/azurerm"
  version             = "1.0.0"
  vnet_resource_group_name_1 = "vnet1-rg"
  vnet_resource_group_name_2 = "vnet2-rg"
  vnet_name_1 = "vnet1"
  vnet_name_2 = "vnet2"
}
```

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 1.42 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| vnet\_resource\_group_name\_1 | Resource group name for first virtual network. | `any` | n/a | yes |
| vnet\_resource\_group_name\_2 | Resource group name for second virtual network. | `any` | n/a | yes |
| vnet\_name\_1 | The name of the first virtual network. | `any` | n/a | yes |
| vnet\_name\_2 | The name of the second virtual network. | `any` | n/a | yes |

## Outputs

No output.
