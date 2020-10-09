terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = ">= 2.2"
  }
}

###################
# Virtual Wan
###################

resource "azurerm_virtual_wan" "vwan" { 

    name = var.wanname
    resource_group_name = var.rsg
    location = var.location
    tags = {

        BuildBy          =       var.tag_buildby
        BuildDate        =       var.tag_builddate
        BuildTicket      =       var.tag_buildticket
        Environment      =       var.environment

    }
  
}

###################
# Virtual Hub
###################

resource "azurerm_virtual_hub" "vhub" {

  count                = length(var.hubnames)
  name                 = var.hubnames[count.index]
  resource_group_name  = var.rsg
  address_prefix       = var.adress_prefixes[count.index]
  location             = var.hublocations[count.index]
  virtual_wan_id       = azurerm_virtual_wan.vwan.id
  tags = {

        BuildBy          =       var.tag_buildby
        BuildDate        =       var.tag_builddate
        BuildTicket      =       var.tag_buildticket
        Environment      =       var.environment

    }
}
