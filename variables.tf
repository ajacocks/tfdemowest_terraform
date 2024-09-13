
variable "vpc_name" {
  type = string
  default = "ajacocks-vpc"
}

variable "user_name" {
  type = string
  default = "ajacocks"
}

variable "vpc_cidr" {
  type = string
  default = "10.10.0.0/16"
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
  default = "ajacocks@redhat.com"
}

variable "deleteby" {
  type = string
  default = "tomorrow"
}

variable "subnet_cidr" {
  type = string
  default = "10.10.10.0/24"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "awskey" {
  type    = string
}

variable "environment" {
  type = string
}