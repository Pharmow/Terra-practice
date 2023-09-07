variable "aws_region" {
    description = "Amazon AWS region"
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    description = "Instance_type"
    type = list(string)
    default = [ "t2.micro", "t2.medium", "t3.medium" ]
  
}

variable "instance_type_env" {
    description = "Instance type base on Environment"
    type = map(string)
    default = {
      "dev" = "t2.micro"
      "qa" = "t2.small"
      "prod" = "t2.medium"
    }
}

variable "key_pair" {
    description = "My key pair"
    type = list(string)
    default = [ "key1", "key2" ]

}

variable "ingress_ports" {
  description = "Ingress ports to be opened for SG"
  type = list(number)
  default = [ 22, 80, 443, 8080, 8181, 9000 ]
}

variable "egress_ports" {
  description = "Egress ports to be opened for SG"
  type = list(number)
  default = [ 80, 443, 8080, 3306 ]
}