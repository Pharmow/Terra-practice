#create variables for keypair, instance type, region, environment, server type and security groups

variable "keyname" {
  description = "keyname"
  type        = string

}

variable "instance_type" {
  description = "Instance type"
  type        = string

}

variable "region" {
  description = "Region"
  type        = string

}

variable "environment" {
  description = "Environment"
  type        = string

}

variable "server" {
  description = "server type"
  type        = string

}

variable "inbound" {
  description = "Inbound SG"
  type        = list(number)
  default     = [22, 443, 8080, 80]

}

variable "outbound" {
  description = "Outbound SG"
  type        = list(number)
  default     = [22, 4489, 8080]

}