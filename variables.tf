
variable "vpc_name" {
  type = string
  default = "dcostakos-vpc"
}

variable "user_name" {
  type = string
  default = "dcostakos"
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
  default = "dcostako@redhat.com"
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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDMSpM5TCA6SYxoN6UVvsEiWelX7KcuX6iAScdMUV3F8NkHNPD4MEUVKuK9jnCuQv68d03vwvi0bRX9VVUoW/taVAf/hMotQyNuybtks6EtrY7GsKo8R33VC12mQbXiouJyMgv2kuLimcMSvc8cftKfZ1MKlj3ofUZp7FRLrsv51hMpUoVaTNDbXFwbdMp0iXxqzD8QF742hFFZ0xfYGw/sJS6nGoV6T6y8WQGZFZLU1lVVUJk4q3hjt3eZcl0Jl22r0gRwMqvqHLtgOZrVO5HQuByf15fWMnnblDHD1FMt2XADLW/iBbUE5x2rjVbsq+0O9LYF3iOv6Al999Q+nE2kZjKmcFzBQM2iryVy8ycXlAYvXmYliGvjaGNKJTbVjjskRtOUz1KBZsVtHLeeYGqbWXcJNhJvrf/ATX7MgRdyLKlHijTSZjr3Ds1QgQOSLtEfwTd3Fo9zokCC8UE4xMSZTzv4th7ZMwoM9OMLPZJKNfJIqvSkhkZCBv3PJifeLis= dcostakos@Davids-MacBook-Pro"
}
