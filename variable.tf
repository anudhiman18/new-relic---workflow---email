# variable "my_workflow" {
#     type = any
# }
variable "destination"{
    type = object ({
        name = string
        type = string

        key = string 
        value = string
    })
}

variable "channel" {
       type = object ({
        name = string
        type = string
        product = string

        key = string
        value = string
})
}

variable "my_workflow" {
  type = object({
    name = string
    muting_rules_handling = string
    name0 = string
    type = string
    attribute = string
    operator = string 
    values = set(string)
  })
}
