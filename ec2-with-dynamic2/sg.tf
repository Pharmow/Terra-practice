resource "aws_security_group" "mytestsg" {
  description = "my Test Dynamic security group for scratch"
  name = "My_test_SG"

    dynamic "ingress" {
      iterator = port
      for_each = var.testsginbound
      content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
      }
    }

    dynamic "egress" {
      iterator = port
      for_each = var.testsgoutbound
      content {
        from_port = port.value
        to_port = port.value
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
      }
    }

    tags = {
        "Name" = "Testing SG"
    }
}