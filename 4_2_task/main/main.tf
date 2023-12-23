module "vpc" {
  source     = "../module/vpc"
  network_id = module.vpc.id
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
}
/*
module "sql" {
  source     = "../module/sql"
  network_id = module.vpc.id
  folder_id  = var.folder_id
  token      = var.token
  cloud_id   = var.cloud_id
  password   = var.sql_password
  subnet_ids = module.vpc.subnet_ids
  zone       = module.vpc.zone
  cluster_id = module.sql.cluster_id 
}
*/