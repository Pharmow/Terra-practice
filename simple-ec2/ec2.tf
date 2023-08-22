# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
provider "aws" {
  region = "us-east-2" 
}


# resource "aws_instance" "demo_ec2" {
#   ami           = "ami-021b67c90e3e68a8f"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "Suse_ec2"
#   }
# }

resource "aws_instance" "group39" {
  ami = "ami-024e6efaf93d85776"
  instance_type = "t2.medium"
  key_name = "xxxxxx" # Enter the key name of your EC2 

  tags = {
    Name = "YourEC2name"
  }
  
}


