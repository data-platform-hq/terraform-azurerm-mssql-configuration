resource "mssql_user" "this" {
  for_each = { for object in var.sql_users_configurations : "${var.database}:${object.username}" => object }

  server {
    host = var.server_fqdn
    azure_login {
      tenant_id     = var.tenant_id
      client_id     = var.client_id
      client_secret = var.client_secret
    }
  }
  database  = var.database
  username  = each.value.username
  object_id = each.value.object_id
  roles     = each.value.roles
}
