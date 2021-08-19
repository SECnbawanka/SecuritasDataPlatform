#Vinay IP's
#116.75.67.156
#49.207.207.94
locals {
    brian_external_ip               = "67.250.121.174"
    abishek_external_ip             = "116.74.145.103"
    durva_external_ip               = "73.29.224.39"
    mitali_external_ip              = "1.39.18.25" #Need her IP
    #moazzem_external_ip             = "152.57.156.29" #Moazzem not using, this is being used by Naresh also
    naresh_external_ip              = "152.57.156.29"
    prasenjit_external_ip           = "122.163.51.145"
    reemal_external_ip              = "106.51.235.210"
    santhosh_external_ip            = "223.186.112.118"
    subba_external_ip               = "213.112.164.154" #He is gone this should go away
    suman_external_ip               = "85.229.209.126"  #No longer on project, VM should go away
    jon_external_ip                 = "78.66.245.225"
    jaspreet_external_ip            = "27.56.158.252"
    sumanta_external_ip             = "202.142.126.26"
    #Vinay VM should go away, along with the NSG
}

# Naming Convention (Not always the case, but in most cases for environment this is true.  Base & Firewall do not follow this):
# [environment]-[region]-[service]-[friendly-name]
# dev-we-rg-warehouse
# dev-we-app-peopleApi
# dev-we-portal-web

module "powershell-login" {
  source = "../../common/powershell-login"

  powershell_command = var.powershell_command
  ps_continue        = "false"
}

module "rg" {
  source = "../../common/resource-group"

  rg_name   = join("",[var.region_suffix,"-rg-warehouse"])
  rg_region = var.region
  rg_tags   = var.tags
}

#Abishek Firewall Rules
module "abishek_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-abishek-nsg"])
  source_address_prefixes     = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.abishek_external_ip])
}

#Durva Firewall Rules
module "durva_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-durva-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.durva_external_ip])
}

#Mitali Firewall Rules
module "mitali_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-mitali-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.mitali_external_ip])
}

#Moazzem Firewall Rules
module "moazzem_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-moazzem-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip])
}

#Naresh Firewall Rules
module "naresh_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-naresh-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip])
}

#Prasenjit Firewall Rules
module "prasenjit_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-prasenjit-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.prasenjit_external_ip])
}

#Reemal Firewall Rules
module "reemal_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-reemal-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.reemal_external_ip])
}

#Santhosh Firewall Rules
module "santhosh_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-santhosh-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.santhosh_external_ip])
}

#Subba Firewall Rules
module "subba_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-subba-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.subba_external_ip])
}

#Suman Firewall Rules
module "suman_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-suman-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.suman_external_ip])
}

#Jon Firewall Rules
module "jon_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-jon-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip])
}

#Jaspreet Firewall Rules
module "jaspreet_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-jaspreet-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.jaspreet_external_ip])
}

#Sumanta Firewall Rules
module "sumanta_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-sumanta-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip],[local.sumanta_external_ip])
}

#Vinay Firewall Rules
module "vinay_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-vm-vinay-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip])
}

#WE Template Firewall Rules
module "we_template_network_security_group" {
  source = "../modules/network-security-group"

  rg_name                     = module.rg.name   # depends_on rg
  rg_region                   = module.rg.region # depends_on rg
  network_security_group_name = join("",[var.region_suffix,"-wh-template-nsg"])
  source_address_prefixes       = concat([local.brian_external_ip],[local.naresh_external_ip],[local.jon_external_ip])
}