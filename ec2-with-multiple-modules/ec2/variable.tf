variable "ec2_instance_name" {
    description = "Name of the EC2 instance as an input"
    type = string
  
}

variable "instance_type" {
    description = "The Instance type"
    type = list(string)
    default = [ "t2.micro", "t2.medium", "t2.large" ]
  
}

variable "key_name" {
    type = string
    default = "Mykey"
  
}

variable "sg-in" {
    description = "Inbound SG"
    type = list(number)
    default = [ 22, 80, 443 ]
  
}

variable "sg-out" {
    description = "Outbound SG"
    type = list(number)
    default = [ 80, 443, 3389, 3306 ]
  
}

variable "region" {
    type = list(string)
    default = [ "us-east-1", "us-east-2", "us-west-1", "us-west-2" ]
  
}