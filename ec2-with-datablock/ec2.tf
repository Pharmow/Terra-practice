resource "aws_instance" "launch_page" {
  ami = data.aws_ami.redhat_9.id
  instance_type = var.instance_type
  user_data = file("${path.module}/user-data.sh")
  key_name = var.key_pair
  vpc_security_group_ids = [aws_security_group.allow_tls.id, aws_security_group.allow_ssh.id]
  tags = {
    "Name" = "xxxxxx"
  }
}

