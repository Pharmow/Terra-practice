data "aws_ami" "redhat_9" {
    most_recent      = true
    owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["RHEL-9.0.0_HVM-*-x86_64-24-Hourly2-GP2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


