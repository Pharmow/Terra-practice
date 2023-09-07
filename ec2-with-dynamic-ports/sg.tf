resource "aws_security_group" "allow_traffic" {
  name        = "allow_traffic"
  description = "Allow SSH and web inbound traffic"
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