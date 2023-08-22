variable "aws_region" {
  description = "This is aws region"
  type = list(string)
  default = [ "us-east-1", "us-east-2", "us-west-1", "us-west-2" ]
}

# variable "the_ami" {
#   description = "Redhat 9 ami"
#   type = string
#   default = "ami-0c9978668f8d55984"
# }

variable "instance_type" {
  description = "AWS instance type"
  type = string
  default = "t2.micro"
}

variable "key_pair" {
  description = "My EC2 instance key pair"
  type = string
  default = "Pharmow"
  
}