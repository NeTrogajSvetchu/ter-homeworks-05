output "dynamodb_endpoint" {
  value = yandex_ydb_database_serverless.test.ydb_full_endpoint
}