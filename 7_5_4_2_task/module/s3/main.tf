module "service_account" {
  source = "./servise_accaunt"
  service_account_name = var.service_account_name
  folder_id = var.folder_id
}

module "backet" {
  source = "./backet"
  folder_id = var.folder_id
  bucket = var.bucket
  access_key = module.service_account.access_key
  secret_key = module.service_account.secret_key
}

module "ydb" {
  source = "./ydb"
  yandex_ydb_database_serverless_name = var.yandex_ydb_database_serverless_name
}

