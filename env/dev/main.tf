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


# module "subnet" {
#   source      = "../../modules/04_subnet"
#   subnetblock = var.subnets
#   depends_on  = [module.vnet, module.rg]
# }


# module "pip" {

#   source     = "../../modules/07_public_ip"
#   pipblock   = var.pips
#   depends_on = [module.rg, module.subnet, module.vnet]
# }


# module "nic" {
#   source     = "../../modules/06_azurerm_network_interface"
#   nicblock   = var.nics
#   depends_on = [module.vnet, module.rg]
# }