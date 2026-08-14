variable  "resource_group_name" {
description = "this is the name of resource group"
type = string
}

variable  "location" {
description = "this is the location of resource group"
type = string
}

variable "tags" {
description ="common tags for Azure resources"
type =map(string)
}
