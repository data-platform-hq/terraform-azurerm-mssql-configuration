locals {
  user_configs_mapped = { for object in flatten([for config in var.sql_users_configurations : [for permission in config.permissions : {
    username  = config.username
    object_id = config.object_id
    database  = permission.database
    roles     = permission.roles
  }] if config.username != null]) : "${object.database}:${object.username}" => object }
}

resource "mssql_user" "this" {
  for_each = local.user_configs_mapped

  server {
    host = var.server_fqdn
    azure_login {
      tenant_id     = var.tenant_id
      client_id     = var.client_id
      client_secret = var.client_secret
    }
  }
  database  = each.value.database
  username  = each.value.username
  object_id = each.value.object_id
  roles     = each.value.roles
}
