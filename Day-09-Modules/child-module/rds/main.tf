resource "aws_db_instance" "primary" {
  provider                = aws.primary
  identifier              = var.primary_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  username                = var.username
  password                = var.password
  db_name                 = var.db_name
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = var.skip_final_snapshot
  publicly_accessible     = var.publicly_accessible
  apply_immediately       = var.apply_immediately
}

resource "aws_db_instance" "replica" {
  provider                = aws.replica
  identifier              = var.replica_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  replicate_source_db     = aws_db_instance.primary.arn
  skip_final_snapshot     = var.skip_final_snapshot
  publicly_accessible     = var.publicly_accessible
  apply_immediately       = var.apply_immediately

  depends_on = [aws_db_instance.primary]
}
