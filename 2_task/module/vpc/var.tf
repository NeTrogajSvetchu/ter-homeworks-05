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

variable "network_id" { 
 }

variable "vpc" {
  default = {
    cred = {
        name = "net"
        zone = "ru-central1-a"
        v4_cidr_blocks = ["10.0.2.0/24"]
  }
}
}
