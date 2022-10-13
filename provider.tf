terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = "~> 0.13"
}


provider "aws" {
  region = var.aws_region
  profile = "default"
}

module "network" {
  source = "./modules/network"
  aws_instance_lampsetup_ids = aws_instance.lampsetup[0].id
}

terraform {
  backend "s3" {
    bucket = "terraform-remote-state-unique1337"
    key    = "states/terraform.tfstate"
    region = "us-east-1"
    profile = "default"
  }
}

