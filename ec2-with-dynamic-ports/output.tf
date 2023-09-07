output "public_ip" {
  description = "Instance Public IP"
  value = aws_instance.ec2_demo.public_ip
}

output "public_dns" {
  description = "Instance Public DNS"
  value = aws_instance.ec2_demo.public_dns
}

output "cpu_count" {
  description = "The CPU count"
  value = aws_instance.ec2_demo.cpu_core_count
}

output "monitoring" {
  description = "Monitoring"
  value = aws_instance.ec2_demo.monitoring
}