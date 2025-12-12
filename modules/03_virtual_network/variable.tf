variable "vnetblock" {
  type = map(object({
vnetname = string
address_space = list(string)
location = string
rgname = string
  }))
}