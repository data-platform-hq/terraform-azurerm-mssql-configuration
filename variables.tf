variable "server_fqdn" {
  description = "Target MSSQL Server fqdn"
  type        = string
}

variable "database" {
  description = "Target MSSQL Server fqdn"
  type        = string
}

variable "sql_users_configurations" {
  description = "List of objects with sql users configuration"
  type = list(object({
    username  = string
    object_id = string
    roles     = list(string)
  }))
  default = []
}

variable "tenant_id" {
  description = "The tenant ID of the principal used to login to the SQL Server. Can also be sourced from the MSSQL_TENANT_ID environment variable"
  type        = string
}

variable "client_id" {
  description = "The client ID of the principal used to login to the SQL Server. Can also be sourced from the MSSQL_CLIENT_ID environment variable."
  type        = string
}

variable "client_secret" {
  description = "The client secret of the principal used to login to the SQL Server. Can also be sourced from the MSSQL_CLIENT_SECRET environment variable."
  type        = string
}
