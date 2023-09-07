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

resource "aws_security_group" "allow_traffic" {
  name        = "allow_traffic"
  description = "Allow traffic"
#   vpc_id      = aws_vpc.main.id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }


  dynamic "egress" {
    iterator = port
    for_each = var.egress_ports
    content {
    from_port        = port.value
    to_port          = port.value
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "allow_traffic"
  }
}

output "sgname" {
    value = aws_security_group.allow_traffic.name
  
}
