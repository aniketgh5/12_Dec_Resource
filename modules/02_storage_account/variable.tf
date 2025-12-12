variable "stgblock" {
  type = map(object({
    stgname = string
    location = string
    rgname = string
    account_tier = string
    account_replication_type = string
    tags = map(string)
  }))
}