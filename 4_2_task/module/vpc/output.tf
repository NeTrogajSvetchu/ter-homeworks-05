output "id" {
 value = yandex_vpc_network.vpc.id
}

output "subnet_ids" {
  value =  yandex_vpc_subnet.vpc.id
}

output "zone" {
  value = var.vpc.cred.zone
}