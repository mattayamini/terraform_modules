terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

module "mod_res" {
    source     = "./modules/res_group"
    rgname     = "resource_1"
    rgloc   = "East Us"
    virnet     = "v_net_1"
    addrspace  = "10.10.0.0/16"
    sunet      = "s_net_1"
    snetaddrsp = "10.10.0.0/24"
}

module "mod_vm" {
    source = "./modules/virtual_machine"
    rgname = "resource_1"
    rgloc = "East Us"
    virnet = "vnet_1"
    addrspace = "10.0.0.0/16"
    sunet = "snet_1"
    snetaddrsp = "10.0.1.0/24"
    nic1 = "niccard_1"
    vm_name = "v_machine_1"
    vm_size = "Standard_B1s"
    admin_usr = "adminuser"
    admin_pswd = "P@$$w0rd1234!"
    os_disk_caching = "ReadWrite"
    os_disk_strg_acc = "Standard_LRS"
    src_img_pbl = "MicrosoftWindowsServer"
    src_img_ofr = "WindowsServer"
    src_img_sk = "2016-Datacenter"
    src_img_vrsn = "latest"
}

module "mod_strg" {
    source = "./modules/storage_acct"
    rgname = "resource_1"
    rgloc = "East Us"
    strg_acc = "uniquestoragename123"
    strg_acc_tier = "Standard"
    strg_acc_repli = "LRS"
    strg_acc_acs = "Hot"
}