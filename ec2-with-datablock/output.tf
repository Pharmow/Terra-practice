# EC2 Instance Public IP

output "Instance_Public_IP" {
  description = "EC2 Instance Public IP"
  value = aws_instance.launch_page.public_ip
}

# EC2 Instance Public DNS
output "Instance_Public_DNS" {
  description = "EC2 Instance Public DNS"
  value = aws_instance.launch_page.public_dns
}
