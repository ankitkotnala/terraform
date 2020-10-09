variable "tag_buildby" {
  type        = string
  description = "Name of the builder."
}

variable "tag_buildticket" {
  type        = string
  description = "Ticket Number for the build"
}

variable "tag_builddate" {
  type        = string
  description = "Date in ISO-8601 format (yyyymmdd)."
}

variable "environment" {
  description = "Prod,QA,STG,DEV,etc."
}

variable "location" {
  type        = string
  description = "Azure region for the environment."
}

###################
#General details
###################
variable "rsg" {
    type = string
    description = "Resource Group to create WAN in"
}

variable "wananme"{
    type = string
    description = "Name of the virtual wan"
}

variable "hubnames" {
    type = list(string)
    description = "name of hub"
}

variable "adress_prefixes" {
    type = list(string)
    description = "Address prefixes of hubs"
}

variable "hublocations" {
    type = list(string)
    description = "Azure Region for Hubs to be created"
}

