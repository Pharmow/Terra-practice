terraform {
  
  required_providers {
     aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
  }

  }
  required_version = "~> 1.0"
}

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "ec2_name" {
    ami = "ami-024e6efaf93d85776"
    instance_type = "t2.micro"
  
}