terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.5"
    }
  }

  backend "s3" {
    bucket     = "terraform-state-oleksii"
    key        = "terraform_my_infra.tfstate"
    region     = "us-east-1"
  }

  required_version = ">= 1.3"
}

provider "aws" {
  region     = "us-east-1"
  # access_key = var.key_id
  # secret_key = var.key_value
}