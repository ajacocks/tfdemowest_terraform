
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  default_tags {
    tags = {
      AlwaysUp    = var.alwaysup
      Name        = var.user_name
      CreatedBy   = var.created_by
      Contact     = var.my_email_address
      DeleteBy    = var.deleteby
      Environment = var.env_name
    }
  }
}
