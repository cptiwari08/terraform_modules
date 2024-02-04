module "tiwari_test" {
  source = "../../module/rg"
  rg = var.rgs
}
module "tiwari_vnet" {
  source = "../../module/vnet"
  vnet = var.vnets
  subnet = var.subnets
}
module "nsgs" {
  source = "../../module/nsg"
  nsg = var.nsgs
  security_rule = var.security_rule
}
module "vms" {
  source = "../../module/vm"
  vms = var.vms
  
}