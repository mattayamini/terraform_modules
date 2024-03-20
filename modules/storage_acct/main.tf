resource "azurerm_storage_account" "strg" {
  name                     = "${var.strg_acc}"
  resource_group_name      = "${var.rgname}"
  location                 = "${var.rgloc}"
  account_tier             = "${var.strg_acc_tier}"
  account_replication_type = "${var.strg_acc_repli}"
  access_tier              = "${var.strg_acc_acs}"

}