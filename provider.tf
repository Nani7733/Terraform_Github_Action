terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {

    organization = "Terraform_Githud_Actions"

    workspaces {
      name = "Terraform_GitHub_Actions"
    }
  }
}

provider "aws" {
  region = var.aws_region
}