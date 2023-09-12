
#create resource block for ec2

resource "aws_instance" "create1" {
  ami           = data.aws_ami.machine-image.id
  instance_type = var.instance_type
  key_name      = var.keyname
  tags = {
    name = local.name
  }
}

