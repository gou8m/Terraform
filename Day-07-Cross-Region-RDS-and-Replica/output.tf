output "primary-endpoint" {
  value = aws_db_instance.primary.endpoint
  
}

output "replica-endpoint" {
  value = aws_db_instance.replica.endpoint
  
}