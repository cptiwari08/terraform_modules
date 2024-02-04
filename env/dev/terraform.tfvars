rgs = {
  rg1 = {
    name     = "cp1"
    location = "westus"
  }

  rg2 = {
    name     = "cpt2"
    location = "centralus"
  }

  rg3 = {
    name     = "cpt3"
    location = "centralus"
  }
}

vnets = {
  vnet1 = {

    name          = "cp_vnet1"
    location      = "westus"
    rgname        = "cp1"
    address_space = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name           = "cp_snet"
    address_prefix = "10.0.1.0/24"
  }
}
nsgs = {
  nsg1 = {
    name     = "testnsg"
    location = "westus"
    rgname   = "cp1"
  }
}
security_rule = {
  security_rule1 = {
    name                   = "testib"
    priority               = "101"
    destination_port_range = "22"
  }
}
vms = {

  vm1 = {

    name     = "testvm"
    rgname   = "cp1"
    location = "westus"
    nicname  = "tnic"
    vnetname = "cp_vnet1"
    subnetname = "cp_snet"
    
  }
}
