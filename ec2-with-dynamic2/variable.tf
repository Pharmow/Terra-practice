variable "region" {
  description = "aws region"
  type = string
  default = "us-east-1"
}

variable "Instance_type" {
    description = "The Instance type"
    type = list(string)
    default = [ "t2.micro", "t2.medium", "t3.medium" ]
}

variable "testsginbound" {
    description = "Security group for the testing"
    type = list(number)
    default = [ 22, 80, 443, 8080, 8181, 9000 ]  
}

variable "testsgoutbound" {
  description = "Outbound SG for testing"
  type = list(number)
  default = [ 80, 443, 8080, 9000, 3306, 25 ]
}

variable "mykey" {
  description = "My key pair"
  type = string
  default = "Mykey"
}

