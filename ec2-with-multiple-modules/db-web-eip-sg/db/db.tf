resource "aws_instance" "dbserver" {
    ami = data.aws_ami.dbdatasource.id
    instance_type = "t2.micro"
    key_name = "My key"
    tags = {
        Name = "DBServer"
    }
  
}

output "instance-IP" {
    value = aws_instance.dbserver.private_ip
  
}