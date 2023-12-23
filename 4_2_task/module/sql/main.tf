resource "yandex_mdb_mysql_cluster" "sql" {
  
  name        = var.name_vm_Mysql
  environment = var.environment_yandex_mdb_mysql_cluster_managed
  network_id  = var.network_id
  version     = var.version_yandex_mdb_mysql_cluster_managed
  
  resources {
    resource_preset_id = var.resources.resource_preset_id
    disk_type_id       = var.resources.disk_type_id
    disk_size          = var.resources.disk_size
  }

  mysql_config = {
    sql_mode                      = "${var.mysql_config.sql_mode}"
    max_connections               = "${var.mysql_config.max_connections}"
    default_authentication_plugin = "${var.mysql_config.default_authentication_plugin}"
    innodb_print_all_deadlocks    ="${var.mysql_config.innodb_print_all_deadlocks}"

  }
  host {
    zone = var.zone
    subnet_id = var.subnet_ids
  }
}
resource "yandex_mdb_mysql_database" "sql" {
  cluster_id = var.cluster_id
  name       = var.data_base_name
}
resource "yandex_mdb_mysql_user" "sql" {
	cluster_id = var.cluster_id
    name       = var.user_name
    password   = var.password

	connection_limits {
	  max_questions_per_hour   = var.connection_limits.max_questions_per_hour
	  max_updates_per_hour     = var.connection_limits.max_updates_per_hour
	  max_connections_per_hour = var.connection_limits.max_connections_per_hour
	  max_user_connections     = var.connection_limits.max_user_connections
	}
    
	global_permissions = ["PROCESS"]

	authentication_plugin = "SHA256_PASSWORD"
}
