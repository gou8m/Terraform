output "primary_endpoint" {
  description = "Primary RDS instance endpoint."
  value       = aws_db_instance.primary.endpoint
}

output "replica_endpoint" {
  description = "Replica RDS instance endpoint."
  value       = aws_db_instance.replica.endpoint
}

output "primary_arn" {
  description = "ARN of the primary RDS instance."
  value       = aws_db_instance.primary.arn
}

output "replica_arn" {
  description = "ARN of the replica RDS instance."
  value       = aws_db_instance.replica.arn
}
