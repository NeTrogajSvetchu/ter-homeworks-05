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

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "sql_password" {
  type = string
}

variable "ip" {
  type = string
  description = "ip-адрес"
  default = "192.168.0.1"
    validation {
      
      condition = can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$",var.ip))
      error_message = "Некорректный IP"
    }
}
variable "ip1" {
  type = list(string)
  description = "ip-адрес"
  default = ["192.168.0.1", "1.1.1.1", "127.0.0.1"]
    validation {
      
      condition = alltrue([for ip in var.ip1: can(regex("^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$", ip))])
      error_message = "Некорректный IP"
    }
}

variable "in_the_end_there_can_be_only_one" {
    description="Who is better Connor or Duncan?"
    type = object({
        Dunkan = optional(bool)
        Connor = optional(bool)
    })

    default = {
        Dunkan = true //false
        Connor = false
    }

    validation {
        error_message = "There can be only one MacLeod"
        condition = var.in_the_end_there_can_be_only_one.Dunkan != var.in_the_end_there_can_be_only_one.Connor
    }
}

variable "in" {
    description="321?"
    type = string
    default = "ffff"

    validation {
        error_message = "123"
        condition = can(regex("^[[:lower:]]+$",var.in))
    }
}
variable "bucket" {
  type = string
  default = "kuxar-bucket-1241125"
}

variable "service_account_name" {
  type = string
  default = "testkuxar"
}

variable "yandex_ydb_database_serverless_name" {
  type = string
  default = "test"
}