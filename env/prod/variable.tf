variable "rgs" {
  type = map(object({
    name     = string
    location = string

    # tags is a map of string values
    tags = map(string)
  }))
}


variable "stgs" {
  type = map(object({
    stgname                  = string
    location                 = string
    rgname                   = string
    account_tier             = string
    account_replication_type = string
    tags                     = map(string)
  }))
}


variable "vnets" {
  type = map(object({
    vnetname      = string
    address_space = list(string)
    location      = string
    rgname        = string
  }))
}

