terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"

}

module "db" {
  source = "./db-web-eip-sg/db"

}

module "web" {
  source = "./db-web-eip-sg/web"

}

output "PublicIP" {
  value = module.web.publicIP
}

output "PrivateIP" {
  value = module.db.instance-IP

}