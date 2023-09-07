

resource "aws_instance" "ec2demo" {
    ami = data.aws_ami.ami4show.id
    instance_type = var.instance_type[0]
    key_name = var.key_name
    tags = {
      "Name" = var.ec2_instance_name
    }

}

