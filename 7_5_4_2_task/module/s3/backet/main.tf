resource "yandex_storage_bucket" "test" {
  folder_id = var.folder_id
  access_key = var.access_key
  secret_key = var.secret_key
  bucket     = var.bucket
}