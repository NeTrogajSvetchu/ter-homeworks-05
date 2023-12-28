output "service_account_name" {
  value = yandex_iam_service_account.sa.id
}
output "access_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.access_key
}
output "secret_key" {
  value = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
}