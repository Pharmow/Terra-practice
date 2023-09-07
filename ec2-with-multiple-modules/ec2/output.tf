output "instance_id" {
    value = aws_instance.ec2demo.id  
}
output "instance_ip" {
    value = aws_instance.ec2demo.public_ip
  
}