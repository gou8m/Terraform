output "ip" {
  value = aws_instance.test-server.public_ip
  sensitive = true
}