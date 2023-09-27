
variable "vpc_name" {
  type = string
}

variable "user_name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "alwaysup" {
  type    = bool
  default = false
}

variable "created_by" {
  type    = string
  default = "TerraformViaAnsible"
}

variable "my_email_address" {
  type = string
}

variable "deleteby" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "image" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "awskey" {
  type      = string
  sensitive = true
}

locals {
  tags = {
    AlwasyUp  = var.alwaysup
    Name      = var.user_name
    CreatedBy = var.created_by
    Contact   = var.my_email_address
    DeleteBy  = var.deleteby
  }
}
