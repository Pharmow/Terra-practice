resource "aws_eip" "webserverIP" {
    instance = var.instance-id
  
}

variable "instance-id" {
  type = string
}

output "PublicIP" {
    value = aws_eip.webserverIP.public_ip
  
}