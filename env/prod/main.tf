module "rg" {
  source  = "../../modules/01_resource_group"
  rgblock = var.rgs
}

module "stg" {
  source     = "../../modules/02_storage_account"
  stgblock   = var.stgs
  depends_on = [module.rg]
}

module "vnet" {
  source     = "../../modules/03_virtual_network"
  vnetblock  = var.vnets
  depends_on = [module.rg]
}

