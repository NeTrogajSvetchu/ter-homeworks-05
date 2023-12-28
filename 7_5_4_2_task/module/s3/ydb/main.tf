resource "yandex_ydb_database_serverless" "test" {
  name                = var.yandex_ydb_database_serverless_name
  deletion_protection = false

  serverless_database {
    enable_throttling_rcu_limit = false
    provisioned_rcu_limit       = 10
    storage_size_limit          = 50
    throttling_rcu_limit        = 0
  }
}
resource "yandex_ydb_table" "test_table" {
  path = "test_dir/test_table_3_col"
  connection_string = yandex_ydb_database_serverless.test.ydb_full_endpoint 
  
column {
      name = "a"
      type = "Utf8"
      not_null = true
    }
    column {
      name = "b"
      type = "Uint32"
      not_null = true
    }
    column {
      name = "c"
      type = "Int32"
      not_null = false
    }
    column {
    name = "d"
    type = "Timestamp"
    }
    primary_key = ["a","b"]
}