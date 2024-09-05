<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 4.0.1 |
| <a name="requirement_mssql"></a> [mssql](#requirement\_mssql) | 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_mssql"></a> [mssql](#provider\_mssql) | 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [mssql_user.this](https://registry.terraform.io/providers/betr-io/mssql/0.3.0/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | The client ID of the principal used to login to the SQL Server. Can also be sourced from the MSSQL\_CLIENT\_ID environment variable. | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | The client secret of the principal used to login to the SQL Server. Can also be sourced from the MSSQL\_CLIENT\_SECRET environment variable. | `string` | n/a | yes |
| <a name="input_database"></a> [database](#input\_database) | Target MSSQL Server fqdn | `string` | n/a | yes |
| <a name="input_server_fqdn"></a> [server\_fqdn](#input\_server\_fqdn) | Target MSSQL Server fqdn | `string` | n/a | yes |
| <a name="input_sql_users_configurations"></a> [sql\_users\_configurations](#input\_sql\_users\_configurations) | List of objects with sql users configuration | <pre>list(object({<br>    username  = string<br>    object_id = string<br>    roles     = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | The tenant ID of the principal used to login to the SQL Server. Can also be sourced from the MSSQL\_TENANT\_ID environment variable | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
