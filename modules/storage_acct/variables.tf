variable "rgname"{
  description = "resource name"
  type = string
}

variable "rgloc"{
  description = "resource loc"
  type = string
}
variable "strg_acc" {
  description = "Name of the storage account"
  type        = string
  #default     = "uniquestoragename123"
}

variable "strg_acc_tier" {
  description = "Storage account tier"
  type        = string
  #default     = "Standard"  # Options: "Standard", "Premium"
}

variable "strg_acc_repli" {
  description = "Replication type for the storage account"
  type        = string
  #default     = "LRS"  # Options: "LRS", "GRS", "ZRS", "RA-GRS", "GZRS", "RA-GZRS"
}

variable "strg_acc_acs" {
  description = "Access tier for the storage account"
  type        = string
  #default     = "Hot"  # Options: "Hot", "Cool"
}