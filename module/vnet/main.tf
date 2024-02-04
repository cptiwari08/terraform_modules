resource "azurerm_virtual_network" "tiwari_vnet" {
  for_each            = var.vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.rgname
  address_space       = each.value.address_space

  
  dynamic "subnet" {
    for_each = var.subnet
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    
    }

  }
}

