resource "yandex_iam_service_account" "sa" { 
  name = var.service_account_name
  folder_id = var.folder_id
}

resource "yandex_resourcemanager_folder_iam_member" "test" {
  folder_id   = var.folder_id
  role        = "storage.editor"
  member      = "serviceAccount:${yandex_iam_service_account.sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "test1" {
  folder_id   = var.folder_id
  role        = "ydb.admin"
  member      = "serviceAccount:${yandex_iam_service_account.sa.id}"
}
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa.id
  description        = "static access key for object storage"
}
