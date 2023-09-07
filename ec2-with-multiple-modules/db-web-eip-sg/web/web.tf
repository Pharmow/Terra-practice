resource "aws_instance" "webserver" {
    ami = data.aws_ami.webbdatasource.id
    instance_type = "t2.micro"
    key_name = "Mykey"
    security_groups = [module.sg.sgname]
    user_data = file("./db-web-eip-sg/web/script.sh")

    tags = {
        Name = "WebServer"
    }
  
}

output "publicIP" {
    value = module.eip.PublicIP
  
}

module "eip" {
    source = "../eip"
    instance-id = aws_instance.webserver.id
  
}

module "sg" {
    source = "../sg"
    
}