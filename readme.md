## Providers

| Name | Version |
|------|---------|
| azurerm | >= 2.2 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Prod,QA,STG,DEV,etc. | `any` | n/a | yes |
| location | Azure region for the environment. | `string` | n/a | yes |
| rsg | Resource Group to Create the WAN in | `string` | n/a | yes |
| tag\_buildby | Name of the builder. | `string` | n/a | yes |
| tag\_builddate | Date in ISO-8601 format (yyyymmdd). | `string` | n/a | yes |
| tag\_buildticket | Ticket Number for the build | `string` | n/a | yes |
| wanname | Name for the Virtual Wan | `string` | n/a | yes |
| hubnames | Names for hubs to be created | `list` | `""` | Yes |
| hublocations | Azure Regions for hubs to be created | `list` | `""` | Yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_hub | Outputs everything about the virtual hubs created |


## Example

Optional inputs are commented out.

```hcl
module "wan1" {
  source = "github.com/ankitkotnala/terraform.git"

  rsg             = "uks-prd-wan-rsg"
  wanname          = "uksprdwan001"
  hubnames         = ["hub1","hub2"]
  hublocations    = ["UK South","UK West"]
  adress_prefixes = ["10.0.0.0/24","172.0.0.0/24"]
  location        = var.location
  environment     = var.environment
  tag_buildby     = var.buildby
  tag_buildticket = var.buildticket
  tag_builddate   = var.builddate
  
}
```
