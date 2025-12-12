variable "rgblock" {
  type = map(object({
    name     = string
    location = string

    # tags is a map of string values
    tags = map(string)


    }))
  }

