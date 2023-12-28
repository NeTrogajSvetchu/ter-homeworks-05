
terraform {
  backend "s3"{
  endpoint = "storage.yandexcloud.net"
  bucket = "kuxar-terraform-05"
  region = "ru-central1"
  key    = "test/terraform.tfstate"
  skip_region_validation      = true
  skip_credentials_validation = true
  dynamodb_endpoint           = "https://docapi.serverless.yandexcloud.net/ru-central1/b1grurkigc4agd16neb0/etnksp0d6nkjeco6sqkc"
  dynamodb_table = "test"
}

}

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}


