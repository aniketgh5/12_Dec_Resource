resource "azurerm_virtual_network" "vnetblock" {
  for_each = var.vnetblock
  name                = each.value.vnetname
  address_space       = each.value.address_space
  location            = each.value.location
  resource_group_name = each.value.rgname
}