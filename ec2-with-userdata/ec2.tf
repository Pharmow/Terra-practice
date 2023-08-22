resource "aws_instance" "launch_page" {
  ami = var.the_ami
  instance_type = var.instance_type
  user_data = file("${path.module}/user-data.sh")
  tags = {
    "Name" = "YourTagName"
  }
}

variable "the_ami" {
  description = "Redhat 9 ami"
  type = string
  default = "ami-0c9978668f8d55984"
}

variable "instance_type" {
  description = "AWS instance type"
  type = string
  default = "t2.micro"
}