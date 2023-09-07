resource "aws_instance" "ec2_demo" {
  ami = data.aws_ami.redhat_ami.id
  instance_type = var.instance_type[0]
  key_name = var.key_pair[0]
  user_data = file("${path.module}/user-data.sh")
  vpc_security_group_ids = [ aws_security_group.allow_traffic.id ]
  tags = {
    Name = "Another_demo"
  }
}