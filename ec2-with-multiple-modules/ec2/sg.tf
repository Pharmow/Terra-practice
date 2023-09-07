resource "aws_security_group" "sgforall" {
    description = "Security group for in and out"
    name = "SGinout"

    dynamic "ingress" {
        iterator = port
        for_each = var.sg-in
        content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = [ "0.0.0.0/0" ]
        }
      
    }

    dynamic "egress" {
        iterator = port
        for_each = var.sg-out
        content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = [ "0.0.0.0/0" ]
        }
      
    }
  
}