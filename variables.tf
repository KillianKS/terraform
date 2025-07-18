variable "location" {
  default = "francecentral"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-flask-app"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "ssh_public_key" {
  description = "Clé publique SSH pour accéder à la VM"
  type        = string
}

variable "mysql_password" {
  type      = string
  sensitive = true
}
