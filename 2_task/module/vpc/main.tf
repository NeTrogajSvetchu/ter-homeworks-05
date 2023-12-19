resource "yandex_vpc_network" "vpc" {
  name = var.vpc.cred.name
}
resource "yandex_vpc_subnet" "vpc" {
  network_id     = var.network_id
  name           = "sab-${var.vpc.cred.name}"
  zone           = var.vpc.cred.zone
  v4_cidr_blocks = var.vpc.cred.v4_cidr_blocks
}