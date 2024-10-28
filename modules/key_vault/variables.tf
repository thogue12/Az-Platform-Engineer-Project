variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "purge_protection_enabled" {
  type = bool
}

variable "key_valut_name" {
  type = string
}

variable "sku_name" {
  type = string
  description = "SKU of the key vault can be values such as; 'standard' and 'premium' "
}

variable "secrete_permissions" {
  type = list(string)
  description = "can be any or all of the following values: Get, Backup, Delete, List, Purge, Recover, Restore, Set."
}
variable "key_permissions" {
  type = list(string)
  description = "can be any or all of the following values: Create, Delete,Get,Purge, Recover,Update,GetRotationPolicy,SetRotationPolicy "
}
variable "storage_permissions" {
  type = list(string)
  description = "can be any or all of the following values: Get, Backup, Delete, DeleteSAS, GetSAS, List, Purge, Recover, RegenerateKey, Restore, Set, SetSAS, Update"
}

variable "db_password" {
  type = string
}

variable "db_username" {
  type = string
}