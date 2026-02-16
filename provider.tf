terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {

    organization = "Terraform_Githud_Action"

    workspaces {
      name = "Githud_Action"
    }
  }
}

provider "aws" {
  region = var.aws_region
}