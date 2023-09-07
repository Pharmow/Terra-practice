terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  
}

module "db" {
    source = "./db"
      
}

module "web" {
  source = "./web"
  
}

output "PublicIP" {
  value = module.web.publicIP
}

output "PrivateIP" {
  value = module.db.instance-IP
  
}