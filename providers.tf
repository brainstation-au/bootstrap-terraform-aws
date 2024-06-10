terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.97.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "terraform-backend"
    storage_account_name = "terradata"
    container_name       = ""
    key                  = "terraform.tfstate"
    subscription_id      = "a41dafcb-2936-42b5-8796-d761f0cbe41e"
  }

  required_version = ">= 1.7.4"
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = local.tags
  }
}
