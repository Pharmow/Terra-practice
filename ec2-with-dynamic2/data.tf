data "aws_ami" "myami" {
  owners = [ "amazon" ]
  most_recent = true

  filter {
    name = "name"
    values = [ "RHEL-9.0.0_HVM-*-x86_64-24-Hourly2-GP2" ]
  }

  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
}