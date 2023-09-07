resource "aws_instance" "Testing" {
    ami = data.aws_ami.myami.id
    instance_type = var.Instance_type[0]
    vpc_security_group_ids = [ aws_security_group.mytestsg.id ]
    key_name = var.mykey

    count = 3
    tags = {
      "Name" = "Testing-${count.index}"
    }
}