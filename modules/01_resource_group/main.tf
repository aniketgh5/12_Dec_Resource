resource "azurerm_resource_group" "rgblock" {
  for_each = var.rgblock
  name = each.value.name
  location  = each.value.location
  tags = each.value.tags
}

# resource "random_string" "myrandom" {
#   length = 16
#   special = false
#   upper = false
# }