variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "subnet_ids" {
}

variable "network_id" {
}

variable "cluster_id" {
}

variable "zone" {
}


variable "name_vm_Mysql" {
  default = "test_sql"
}
variable "connection_limits" {
  type = map(number)
  default = {
    max_questions_per_hour      = 10
    max_updates_per_hour        = 20
    max_connections_per_hour    = 30
    max_user_connections        = 40
  }
}

variable "password" {
    type = string
}

variable "user_name" {
  type = string
  default = "user"
}

variable "data_base_name" {
  type = string
  default = "data_base"
}
variable "environment_yandex_mdb_mysql_cluster_managed" {
  type    = string
  default = "PRESTABLE"
}

variable "version_yandex_mdb_mysql_cluster_managed" {
  type    = string
  default = "8.0"
}

variable "size_vm_Mysql" {
  type = number
  default = 10
}

variable "resources" {
 default = {
    resource_preset_id = "s2.micro"
    disk_type_id       = "network-hdd"
    disk_size          = 10
  }
}

variable "mysql_config" {
  default = {
    sql_mode                      = "ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION"
    max_connections               = 100
    default_authentication_plugin = "MYSQL_NATIVE_PASSWORD"
    innodb_print_all_deadlocks    = true
  }
}
